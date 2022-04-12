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
    
    func addConstraints(with constraints: [Constraint]) {
        // Auto Resizing Masks -> Constraints
        self.translatesAutoresizingMaskIntoConstraints = false
        // For each constraint, if it has a constant, add constant constraint, otherwise add anchor constraint
        for constraint in constraints {
            if let constant  = constraint.constant {
                switch constraint.constraint {
                case .top:
                    self.topAnchor.constraint(equalTo: constraint.parentView.topAnchor, constant: constant).isActive = true
                case .bottom:
                    self.bottomAnchor.constraint(equalTo: constraint.parentView.bottomAnchor, constant: constant).isActive = true
                case .leading:
                    self.leadingAnchor.constraint(equalTo: constraint.parentView.leadingAnchor, constant: constant).isActive = true
                case .trailing:
                    self.trailingAnchor.constraint(equalTo: constraint.parentView.trailingAnchor, constant: constant).isActive = true
                }
            } else {
                switch constraint.constraint {
                case .top:
                    self.topAnchor.constraint(equalTo: constraint.parentView.topAnchor).isActive = true
                case .bottom:
                    self.bottomAnchor.constraint(equalTo: constraint.parentView.bottomAnchor).isActive = true
                case .leading:
                    self.leadingAnchor.constraint(equalTo: constraint.parentView.leadingAnchor).isActive = true
                case .trailing:
                    self.trailingAnchor.constraint(equalTo: constraint.parentView.trailingAnchor).isActive = true
                }
            }
        }
    }
}
