//
//  NSLayoutYAxisAnchor+ConstraintRelation.swift
//  CoreUIKit
//
//  Created by Manish on 16/10/21.
//

import UIKit

extension NSLayoutYAxisAnchor: ConstraintRelatable {
    
    func constraint(with relation: ConstraintRelation,
                    on relativeViewAnchor: NSLayoutYAxisAnchor,
                    margin: CGFloat) -> NSLayoutConstraint {
        switch relation {
        case .equal:
            return self.constraint(equalTo: relativeViewAnchor, constant: margin)
        case .greaterOrEqual:
            return self.constraint(greaterThanOrEqualTo: relativeViewAnchor, constant: margin)
        case .lessOrEqual:
            return self.constraint(lessThanOrEqualTo: relativeViewAnchor, constant: margin)
        }
    }
    
}
