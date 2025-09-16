import Foundation
public extension Int {
    /// Converts the integer to its string representation.
    /// Usage: let stringValue = 123.toString  // "123"
    var toString: String {
        return String(self)
    }
    
    /// Converts the integer to a Boolean value.
    /// Returns `true` if the integer is not zero, otherwise `false`.
    /// Usage: let boolValue = 1.toBool  // true
    var toBool: Bool {
        return self != 0
    }
}
