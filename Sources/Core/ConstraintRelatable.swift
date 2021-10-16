//
//  ConstraintRelatable.swift
//  CoreUIKit
//
//  Created by Manish on 16/10/21.
//

import UIKit

protocol ConstraintRelatable {
    
    associatedtype AnchorAxisType: AnyObject
    func constraint(with relation: ConstraintRelation,
                    on relativeViewAnchor: AnchorAxisType,
                    margin: CGFloat) -> NSLayoutConstraint
    
}
