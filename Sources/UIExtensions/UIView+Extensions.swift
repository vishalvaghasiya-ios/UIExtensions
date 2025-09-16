import UIKit
import ObjectiveC

public extension UIView {
    
    /// The radius to use when drawing rounded corners for the view’s background. Animatable.
    @IBInspectable
    var cornerRadius: CGFloat {
        get { layer.cornerRadius }
        set { layer.cornerRadius = newValue }
    }
    
    /// The width of the view’s border. Animatable.
    @IBInspectable
    var borderWidth: CGFloat {
        get { layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    /// The color of the view’s border. Animatable.
    @IBInspectable
    var borderColor: UIColor? {
        get { layer.borderColor.map { UIColor(cgColor: $0) } }
        set { layer.borderColor = newValue?.cgColor }
    }
    
    /// The blur radius (in points) used to render the view’s shadow. Animatable.
    @IBInspectable
    var shadowRadius: CGFloat {
        get { layer.shadowRadius }
        set { layer.shadowRadius = newValue }
    }
    
    /// The opacity of the view’s shadow. Animatable.
    @IBInspectable
    var shadowOpacity: Float {
        get { layer.shadowOpacity }
        set { layer.shadowOpacity = newValue }
    }
    
    /// The offset (in points) of the view’s shadow. Animatable.
    @IBInspectable
    var shadowOffset: CGSize {
        get { layer.shadowOffset }
        set { layer.shadowOffset = newValue }
    }
    
    /// The color of the view’s shadow. Animatable.
    @IBInspectable
    var shadowColor: UIColor? {
        get { layer.shadowColor.map { UIColor(cgColor: $0) } }
        set { layer.shadowColor = newValue?.cgColor }
    }
}

