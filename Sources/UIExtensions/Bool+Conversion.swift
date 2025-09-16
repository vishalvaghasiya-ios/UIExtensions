
public extension Bool {
    /// Converts the boolean value to an integer (true = 1, false = 0).
    var toInt: Int {
        return self ? 1 : 0
    }

    /// Converts the boolean value to its string representation ("true" or "false").
    var toString: String {
        return self ? "true" : "false"
    }
}
