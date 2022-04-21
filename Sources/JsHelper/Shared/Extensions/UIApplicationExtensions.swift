//

import SwiftUI
import StoreKit

public extension UIApplication {
    // current window
    @available(iOS 13, *)
    func currentUIWindow() -> UIWindow? {
        let connectedScenes = UIApplication.shared.connectedScenes
            .filter({
                $0.activationState == .foregroundActive})
            .compactMap({$0 as? UIWindowScene})
        
        let window = connectedScenes.first?
            .windows
            .first { $0.isKeyWindow }
        
        return window
    }

    // current window scene
    @available(iOS 13, *)
    func currentUIWindowScene() -> UIWindowScene? {
        return UIApplication.shared.connectedScenes.first as? UIWindowScene
    }

    // request review
    @available(iOS 13, *)
    static func requestStoreReview() {
        if #available(iOS 14.0, *) {
            if let windowScene = self.shared.currentUIWindowScene() {
                SKStoreReviewController.requestReview(in: windowScene)
            }
        } else {
            SKStoreReviewController.requestReview()
        }
    }
}

