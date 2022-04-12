import Foundation

public extension Date {
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
    
    //MARK: - Get String from Date
    /// Get date string with date format
    func getString(for format: Formats) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format.rawValue
        formatter.locale = .current
        formatter.setLocalizedDateFormatFromTemplate(format.rawValue)
        return formatter.string(from: self)
    }
}
