//

import UIKit

public extension UIView {
    func addConstrained(subview: UIView) {
        // Add onboarding view to viewController
        addSubview(subview)
        // Auto Resizing Masks -> Constraints
        subview.translatesAutoresizingMaskIntoConstraints = false
        // Add onboarding view constraints
        subview.topAnchor.constraint(equalTo: topAnchor).isActive = true
        subview.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        subview.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        subview.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    func addConstrained(subview: UIView, with constraints: [Constraint]) {
        // Add onboarding view to viewController
        addSubview(subview)
        // Auto Resizing Masks -> Constraints
        subview.translatesAutoresizingMaskIntoConstraints = false
        // For each constraint, if it has a constant, add constant constraint, otherwise add anchor constraint
        for constraint in constraints {
            if let constant  = constraint.constant {
                switch constraint.constraint {
                case .top:
                    subview.topAnchor.constraint(equalTo: topAnchor, constant: constant).isActive = true
                case .bottom:
                    subview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: constant).isActive = true
                case .leading:
                    subview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: constant).isActive = true
                case .trailing:
                    subview.trailingAnchor.constraint(equalTo: trailingAnchor, constant: constant).isActive = true
                }
            } else {
                switch constraint.constraint {
                case .top:
                    subview.topAnchor.constraint(equalTo: topAnchor).isActive = true
                case .bottom:
                    subview.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
                case .leading:
                    subview.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
                case .trailing:
                    subview.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
                }
            }
        }
    }
}
