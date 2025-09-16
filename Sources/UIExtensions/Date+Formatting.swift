import Foundation
import UIKit

public extension Date {
    /// Returns a string representation of the date using the specified format.
    ///
    /// - Parameter format: A date format string (e.g., "yyyy-MM-dd HH:mm:ss").
    /// - Returns: A formatted date string. If formatting fails, returns an empty string.
    func getFormattedString(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.timeZone = .current
        dateformat.dateFormat = format
        let date: String? = dateformat.string(from: self)
        return date ?? ""
    }
    
    /// Returns the year component of the date as a string in "yyyy" format.
    ///
    /// - Returns: A four-digit year string (e.g., "2024").
    func getYear() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        return dateFormatter.string(from: self)
    }
    
    /// Returns the month component of the date as a short string (e.g., "Jan", "Feb").
    ///
    /// - Returns: The abbreviated month string in "MMM" format.
    func getSortMonth() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM"
        return dateFormatter.string(from: self)
    }
    
    /// Returns the day component of the date as a string in "dd" format.
    ///
    /// - Returns: A two-digit day string (e.g., "01", "15").
    func getDay() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd"
        return dateFormatter.string(from: self)
    }
    
    /// Generates a list of year strings centered around the current date's year.
    ///
    /// - Parameters:
    ///   - Previous: The number of years before the current year to include.
    ///   - Next: The number of years after the current year to include.
    /// - Returns: An array of year strings (in "yyyy" format) ranging from (currentYear-Previous) to (currentYear+Next).
    func getYearList(Previous: Int, Next: Int) -> [String] {
        let calendar = Calendar.current
        let currentYear = calendar.component(.year, from: self)
        return (currentYear-Previous...currentYear+Next).map { String($0) }
    }
}
