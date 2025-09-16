import Foundation
public extension String {
    
    /// Converts the string to a Double value.
    /// Returns 0.0 if the conversion fails.
    var toDouble: Double {
        return (self as NSString).doubleValue
    }
    
    /// Converts the string to a Float value.
    /// Returns 0.0 if the conversion fails.
    var toFloat: Float {
        return (self as NSString).floatValue
    }
    
    /// Converts the string to a Boolean value.
    /// Returns true if the string is "true" (case-insensitive),
    /// false if the string is "false" (case-insensitive),
    /// otherwise uses NSString's boolValue which returns false for unrecognized strings.
    var toBool: Bool {
        let lower = self.lowercased()
        if lower == "true" { return true }
        if lower == "false" { return false }
        return (self as NSString).boolValue
    }
    
    /// Converts the string to an Int value.
    /// Returns 0 if the conversion fails.
    var toInt: Int {
        return NumberFormatter().number(from: self)?.intValue ?? 0
    }
    
    /// Parses the string into a Date object using the specified format and time zone.
    ///
    /// - Parameters:
    ///   - format: The date format of the string.
    ///   - timeZone: The time zone to use for parsing (default is UTC).
    /// - Returns: A Date object if parsing is successful, otherwise nil.
    func dateFormatting(format: String, timeZone: TimeZone = TimeZone(abbreviation: "UTC")!) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.timeZone = timeZone
        
        return formatter.date(from: self)
    }
}
