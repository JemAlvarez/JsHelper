//

import SwiftUI
import StoreKit

@available(iOS 13, *)
public extension View {
    @available(iOS 14, *)
    /// Open a url in the browser
    func openLink(_ link: String, with openUrl: OpenURLAction) {
        if let url = URL(string: link) {
            openUrl(url)
        }
    }
    
    /// Present ShareSheet
    func presentShareSheet(with items: [Any]) {
        let AV = UIActivityViewController(activityItems: items, applicationActivities: nil)
        UIApplication.shared.currentUIWindow()?.rootViewController?.present(AV, animated: true, completion: nil)
    }
    
    @available(iOS 14, *)
    /// Present request review prompt
    func requestReview() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            SKStoreReviewController.requestReview(in: windowScene)
        }
    }
    
    /// Generate haptic feedback
    func haptic(_ style: HapticStyle = .soft) {
        switch style {
        case .light:
            let impactGenerator = UIImpactFeedbackGenerator(style: .light)
            impactGenerator.impactOccurred()
        case .medium:
            let impactGenerator = UIImpactFeedbackGenerator(style: .medium)
            impactGenerator.impactOccurred()
        case .heavy:
            let impactGenerator = UIImpactFeedbackGenerator(style: .heavy)
            impactGenerator.impactOccurred()
        case .rigid:
            let impactGenerator = UIImpactFeedbackGenerator(style: .rigid)
            impactGenerator.impactOccurred()
        case .soft:
            let impactGenerator = UIImpactFeedbackGenerator(style: .soft)
            impactGenerator.impactOccurred()
        case .success:
            let notificationGenerator = UINotificationFeedbackGenerator()
            notificationGenerator.notificationOccurred(.success)
        case .error:
            let notificationGenerator = UINotificationFeedbackGenerator()
            notificationGenerator.notificationOccurred(.error)
        case .warning:
            let notificationGenerator = UINotificationFeedbackGenerator()
            notificationGenerator.notificationOccurred(.warning)
        case .selection:
            let selectionGenerator = UISelectionFeedbackGenerator()
            selectionGenerator.selectionChanged()
        }
    }
}
