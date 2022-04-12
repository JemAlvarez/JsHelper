//

import UIKit

public struct Constraint {
    let constraint: ConstraintType
    let constant: CGFloat?
    let parentView: UIView
    
    public init(constraint: ConstraintType, parentView: UIView, constant: CGFloat? = nil) {
        self.constraint = constraint
        self.parentView = parentView
        self.constant = constant
    }
}
