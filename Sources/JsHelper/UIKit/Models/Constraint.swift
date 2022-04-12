//

import UIKit

public struct Constraint {
    let constraint: ConstraintType
    let constant: CGFloat?
    
    public init(constraint: ConstraintType, constant: CGFloat? = nil) {
        self.constraint = constraint
        self.constant = constant
    }
}
