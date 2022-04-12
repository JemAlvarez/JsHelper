//

import UIKit

@available(iOS 13, *)
public extension UIWindowSceneDelegate {
    
    /// Make window for Non-Storyboard UIKit apps
    ///
    /// Steps to switch from Storyboard to Programmatic:
    /// 1. Remove Main.storyboard file
    /// 2. Remove Main.storyboard reference from deployment
    /// 3. Remove Info.plist reference (Info.plist -> Application Scene Manifest -> Scene Configuration -> Application Session Role -> Item 0 -> Storyboard Name)
    /// 4. Make new window in SceneDelegate
    ///
    /// - Parameter for: The UIScene to create the the window for
    /// - Parameter with: The Root ViewController to initialize the window with
    ///
    /// - Returns: An optional UIWindow
    ///
    /// - Warning: If the UIScene cannot be casted to a UIWindowScene, the function will return nil
    func makeWindow(for scene: UIScene, with controller: UIViewController) -> UIWindow? {
        guard let windowScene = (scene as? UIWindowScene) else { return nil }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = controller // Your initial view controller.
        window.makeKeyAndVisible()
        
        return window
    }
}
