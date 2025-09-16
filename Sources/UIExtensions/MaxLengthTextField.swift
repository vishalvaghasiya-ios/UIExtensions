import UIKit
import ObjectiveC

public extension UITextField {
    
    /// Associated keys used for storing properties in the UITextField extension
    private struct AssociatedKeys {
        @MainActor static var maxLength = "maxLength"
        @MainActor static var placeholderColor = "placeholderColor"
    }
    
    /// The maximum length of text that can be entered in the text field.
    /// Setting this property adds a target to enforce the limit during editing.
    @IBInspectable
    var maxLength: Int {
        get {
            objc_getAssociatedObject(self, &AssociatedKeys.maxLength) as? Int ?? Int.max
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.maxLength, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            addTarget(self, action: #selector(checkMaxLength), for: .editingChanged)
        }
    }
    
    /// The color of the placeholder text.
    @IBInspectable
    var placeholderColor: UIColor? {
        get {
            objc_getAssociatedObject(self, &AssociatedKeys.placeholderColor) as? UIColor
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.placeholderColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if let placeholder = self.placeholder, let color = newValue {
                attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: color])
            } else {
                attributedPlaceholder = nil
            }
        }
    }
    
    /// Called when the text field's text changes to enforce the maximum length limit.
    /// Truncates the text if it exceeds the maxLength.
    @objc private func checkMaxLength() {
        guard let text = self.text, text.count > maxLength else { return }
        self.text = String(text.prefix(maxLength))
    }
}
