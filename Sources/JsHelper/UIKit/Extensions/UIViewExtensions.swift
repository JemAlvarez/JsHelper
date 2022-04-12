//

import UIKit

public extension UIView {
    func addConstraints(equalTo view: UIView) {
        // Auto Resizing Masks -> Constraints
        self.translatesAutoresizingMaskIntoConstraints = false
        // Add onboarding view constraints
        self.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
