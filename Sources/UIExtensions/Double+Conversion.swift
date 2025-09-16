public extension Double {
    /// Converts the double to a String representation.
    var toString: String {
        return String(self)
    }
    
    /// Converts the double to an Int by truncating the decimal part.
    var toInt: Int {
        return Int(self)
    }
    
    /// Converts the double to a Float.
    var toFloat: Float {
        return Float(self)
    }
    
    /// Returns true if the double is not zero, false otherwise.
    var toBool: Bool {
        return self != 0
    }
    
    /// Returns the double formatted as a string with two decimal places.
    var toDecimalString: String {
        return String(format: "%.2f", self)
    }
}
