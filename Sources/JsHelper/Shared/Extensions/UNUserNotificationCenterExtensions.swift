//

import UserNotifications

@available(iOS 10, *)
public extension UNUserNotificationCenter {
    // request permission
    static func requestPermission(for options: UNAuthorizationOptions, completion: @escaping () -> Void) {
        UNUserNotificationCenter.current().requestAuthorization(options: options) { success, error in
            if success {
                completion()
            } else if let error = error {
                error.printError(for: "User notifications")
            }
        }
    }
    
    // bring back user notification
    static func bringBackUser(with notificationContent: UNMutableNotificationContent, in days: Int) {
        // Notification ID
        let notificationID = "BRING-BACK-USER-NOTIFICATION-ID"
        
        // Date for notification
        let date = Calendar.current.date(byAdding: .day, value: days, to: Date())
        // Date trigger
        guard let date = date else { return }
        let components = Calendar.current.dateComponents([.day, .month, .year], from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
        // Request
        let request = UNNotificationRequest(identifier: notificationID, content: notificationContent, trigger: trigger)
        
        
        // Unschedule notification if pending
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: [notificationID])
        
        // Schedule new notification for given date
        UNUserNotificationCenter.current().add(request)
    }
}
