public extension Float {
    /// Converts the Float to a String.
    /// Usage: `let str = myFloat.toString`
    var toString: String {
        return String(self)
    }

    /// Converts the Float to an Int by truncating the fractional part.
    /// Usage: `let intVal = myFloat.toInt`
    var toInt: Int {
        return Int(self)
    }

    /// Converts the Float to a Double.
    /// Usage: `let doubleVal = myFloat.toDouble`
    var toDouble: Double {
        return Double(self)
    }
}
