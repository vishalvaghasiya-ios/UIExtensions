import UIKit
import ObjectiveC

public extension UITextView {

    private struct AssociatedKeys {
        @MainActor static var placeholderLabel = "placeholderLabel"
        @MainActor static var placeholderColor = "placeholderColor"
    }

    @IBInspectable
    var placeholder: String? {
        get { return placeholderLabel?.text }
        set {
            if let label = placeholderLabel {
                label.text = newValue
                updatePlaceholder()
            } else {
                let label = UILabel()
                label.text = newValue
                label.textColor = placeholderColor ?? .lightGray
                label.font = self.font ?? UIFont.systemFont(ofSize: 14)
                label.numberOfLines = 0
                label.backgroundColor = .clear
                label.isUserInteractionEnabled = false
                label.translatesAutoresizingMaskIntoConstraints = false
                self.addSubview(label)
                self.sendSubviewToBack(label)

                // Pin label to UITextView content area
                NSLayoutConstraint.activate([
                    label.topAnchor.constraint(equalTo: self.topAnchor, constant: textContainerInset.top),
                    label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: textContainerInset.left + textContainer.lineFragmentPadding),
                    label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -(textContainerInset.right + textContainer.lineFragmentPadding))
                ])

                objc_setAssociatedObject(self, &AssociatedKeys.placeholderLabel, label, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                
                // Observe text changes
                NotificationCenter.default.addObserver(self, selector: #selector(textDidChange), name: UITextView.textDidChangeNotification, object: self)
                
                updatePlaceholder()
            }
        }
    }

    @IBInspectable
    var placeholderColor: UIColor? {
        get { return objc_getAssociatedObject(self, &AssociatedKeys.placeholderColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.placeholderColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            placeholderLabel?.textColor = newValue
        }
    }

    private var placeholderLabel: UILabel? {
        return objc_getAssociatedObject(self, &AssociatedKeys.placeholderLabel) as? UILabel
    }

    @objc private func textDidChange() {
        updatePlaceholder()
    }

    public func updatePlaceholder() {
        guard let label = placeholderLabel else { return }
        label.isHidden = !self.text.isEmpty
        label.preferredMaxLayoutWidth = frame.width - textContainerInset.left - textContainerInset.right - textContainer.lineFragmentPadding * 2
    }
}
