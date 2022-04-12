//

import Foundation

public extension String {
    //MARK: - Get Date from String
    /// String to date given a date format
    func toDate(with format: String) -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = .current
        formatter.setLocalizedDateFormatFromTemplate(format)
        return formatter.date(from: self) ?? Date()
    }
    
    //MARK: - Is emoji
    /// Whether a string contains an emoji or not
    @available (iOS 10.2, *)
    func hasEmoji() -> Bool {
        guard let firstScalar = unicodeScalars.first else { return false }
        return firstScalar.properties.isEmoji && firstScalar.value > 0x238C
    }
}
