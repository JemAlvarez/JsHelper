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
    @available (iOS 10.2, *)
    /// Whether a string contains an emoji or not
    func hasEmoji() -> Bool {
        guard let firstScalar = unicodeScalars.first else { return false }
        return firstScalar.properties.isEmoji && firstScalar.value > 0x238C
    }

    static func rateOnAppStoreLink(with appId: String) -> String {
        return "https://itunes.apple.com/app/id\(appId)?action=write-review"
    }
}
