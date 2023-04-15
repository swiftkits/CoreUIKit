//
//  NSLayoutDimension+DimensionRelatable.swift
//  CoreUIKit
//
//  Created by Manish on 15/04/23.
//

import UIKit


extension NSLayoutDimension: DimensionRelatable {
    
    func constant(with value: CGFloat, relation: ConstraintRelation) -> NSLayoutConstraint {
        switch relation {
        case .equal:
            return self.constraint(equalToConstant: value)
        case .greaterOrEqual:
            return self.constraint(greaterThanOrEqualToConstant: value)
        case .lessOrEqual:
            return self.constraint(lessThanOrEqualToConstant: value)
        }
    }
    
}
