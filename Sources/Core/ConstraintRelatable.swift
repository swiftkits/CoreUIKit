//
//  ConstraintRelatable.swift
//  CoreUIKit
//
//  Created by Manish on 16/10/21.
//

import UIKit

/// Abstract layer for creating constraints with relation using `ConstraintRelation`
protocol ConstraintRelatable {
    
    associatedtype AnchorAxisType: AnyObject
    ///
    /// Creates constraint with given relation and margin parameters
    ///
    /// - Parameters:
    ///     - with: type of relation
    ///     - on: constraint to be cretated on relative anchor
    ///     - margin: margin around new constraint
    ///
    /// - Returns: `NSLayoutConstraint` - newly generated constraint
    ///
    func constraint(with relation: ConstraintRelation,
                    on relativeViewAnchor: AnchorAxisType,
                    margin: CGFloat) -> NSLayoutConstraint
    
}
