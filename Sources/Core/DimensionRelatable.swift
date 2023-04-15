//
//  DimensionRelatable.swift
//  CoreUIKit
//
//  Created by Manish on 15/04/23.
//

import UIKit

/// Abstract layer for creating dimension constraints with relation using `ConstraintRelation`
protocol DimensionRelatable {
    
    /// Creates constraint with given relation
    /// - Parameters:
    ///   - value: dimension value
    ///   - relation: relation type
    /// - Returns: current view
    func constant(with value: CGFloat,
                  relation: ConstraintRelation) -> NSLayoutConstraint
    
}
