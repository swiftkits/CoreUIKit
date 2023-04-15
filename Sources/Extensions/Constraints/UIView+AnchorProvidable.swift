//
//  UIView+AnchorProvidable.swift
//  CoreUIKit
//
//  Created by Manish on 15/04/23.
//

import UIKit


extension UIView: AnchorProvidable {
    public func getLeading(with anchor: NSLayoutXAxisAnchor,
                           relation: ConstraintRelation,
                           margin: CGFloat) -> NSLayoutConstraint {
        return self.leadingAnchor.constraint(with: relation, on: anchor, margin: margin)
    }
    
    public func getTrailing(with anchor: NSLayoutXAxisAnchor,
                            relation: ConstraintRelation,
                            margin: CGFloat) -> NSLayoutConstraint {
        return self.trailingAnchor.constraint(with: relation, on: anchor, margin: margin)
    }
    
    public func getTop(with anchor: NSLayoutYAxisAnchor,
                       relation: ConstraintRelation,
                       margin: CGFloat) -> NSLayoutConstraint {
        return self.topAnchor.constraint(with: relation, on: anchor, margin: margin)
    }
    
    public func getBottom(with anchor: NSLayoutYAxisAnchor,
                          relation: ConstraintRelation,
                          margin: CGFloat) -> NSLayoutConstraint {
        return self.bottomAnchor.constraint(with: relation, on: anchor, margin: margin)
    }
    
    public func getCenterX(with anchor: NSLayoutXAxisAnchor,
                           margin: CGFloat) -> NSLayoutConstraint {
        return self.centerXAnchor.constraint(equalTo: anchor, constant: margin)
    }
    
    public func getCenterY(with anchor: NSLayoutYAxisAnchor,
                           margin: CGFloat) -> NSLayoutConstraint {
        return self.centerYAnchor.constraint(equalTo: anchor, constant: margin)
    }
    
    public func getWidth(with constant: CGFloat,
                         relation: ConstraintRelation) -> NSLayoutConstraint {
        return self.widthAnchor.constant(with: constant, relation: relation)
    }
    
    public func getHeight(with constant: CGFloat,
                          relation: ConstraintRelation) -> NSLayoutConstraint {
        return self.heightAnchor.constant(with: constant, relation: relation)
    }
}
