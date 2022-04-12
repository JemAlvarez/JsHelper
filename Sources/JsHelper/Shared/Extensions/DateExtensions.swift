import Foundation

public extension Date {
    // Current values
    static let currentHour = Calendar.current.component(.hour, from: Date())
    static let currentMinute = Calendar.current.component(.minute, from: Date())
    static let currentSecond = Calendar.current.component(.second, from: Date())
    static let currentYear = Calendar.current.component(.year, from: Date())
    static let currentMonth = Calendar.current.component(.month, from: Date())
    static let currentDay = Calendar.current.component(.day, from: Date())
    static let currentQuarter = Calendar.current.component(.quarter, from: Date())
    static let currentWeekOfTheMonth = Calendar.current.component(.weekOfMonth, from: Date())
    static let currentWeekOfTheYear = Calendar.current.component(.weekOfYear, from: Date())
    static let currentWeekday = Calendar.current.component(.weekday, from: Date())
    
    //MARK: - Formats
    /// Date String Formats
    ///
    /// * commaWithWeekday - Tuesday, Apr 12, 2022
    /// * slashes - 04/12/2022
    /// * comma - Apr 12, 2022
    enum Formats: String {
        case commaWithWeekday = "EEEE, MMM d, yyyy" // Tuesday, Apr 12, 2022
        case slashes = "MM/dd/yyyy" // 04/12/2022
        case comma = "MMM d, yyyy" // Apr 12, 2022
    }
    
    //MARK: - Days until
    /// Number of days from current Date object to the given date object
    func numberOfDays(until date: Date) -> Int {
        let difference = Calendar.current.dateComponents([.day], from: self, to: date)
        
        if let days = difference.day {
            return days
        }
        
        return 0
    }
    
    //MARK: - Get String from Date
    /// Get date string with date format
    func getString(with format: Formats) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format.rawValue
        formatter.locale = .current
        formatter.setLocalizedDateFormatFromTemplate(format.rawValue)
        return formatter.string(from: self)
    }
    
    /// Get date string with string format
    func getString(with format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = .current
        formatter.setLocalizedDateFormatFromTemplate(format)
        return formatter.string(from: self)
    }
}
