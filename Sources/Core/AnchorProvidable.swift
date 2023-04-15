//
//  AnchorProvidable.swift
//  CoreUIKit
//
//  Created by Manish on 15/04/23.
//

import UIKit


/// An object that can provide link/access to anchors/constraints
public protocol AnchorProvidable {
    
    /// Creates leading anchor with provided connecting anchor, relation and margin
    /// - Parameters:
    ///   - anchor: connecting anchor
    ///   - relation: relation between anchors
    ///   - margin: margin with relating anchor
    /// - Returns: newly constructed leading anchor
    func getLeading(with anchor: NSLayoutXAxisAnchor,
                    relation: ConstraintRelation,
                    margin: CGFloat) -> NSLayoutConstraint
    
    /// Creates trailing anchor with provided connecting anchor, relation and margin
    /// - Parameters:
    ///   - anchor: connecting anchor
    ///   - relation: relation between anchors
    ///   - margin: margin with relating anchor
    /// - Returns: newly constructed trailing anchor
    func getTrailing(with anchor: NSLayoutXAxisAnchor,
                    relation: ConstraintRelation,
                    margin: CGFloat) -> NSLayoutConstraint
    
    /// Creates top anchor with provided connecting anchor, relation and margin
    /// - Parameters:
    ///   - anchor: connecting anchor
    ///   - relation: relation between anchors
    ///   - margin: margin with relating anchor
    /// - Returns: newly constructed top anchor
    func getTop(with anchor: NSLayoutYAxisAnchor,
                relation: ConstraintRelation,
                margin: CGFloat) -> NSLayoutConstraint
    
    /// Creates bottom anchor with provided connecting anchor, relation and margin
    /// - Parameters:
    ///   - anchor: connecting anchor
    ///   - relation: relation between anchors
    ///   - margin: margin with relating anchor
    /// - Returns: newly constructed bottom anchor
    func getBottom(with anchor: NSLayoutYAxisAnchor,
                   relation: ConstraintRelation,
                   margin: CGFloat) -> NSLayoutConstraint
    
    /// Creates center X anchor with provided connecting anchor and margin
    /// - Parameters:
    ///   - anchor: connecting anchor
    ///   - margin: margin with relating anchor
    /// - Returns: newly constructed centerX anchor
    func getCenterX(with anchor: NSLayoutXAxisAnchor,
                    margin: CGFloat) -> NSLayoutConstraint
    
    /// Creates center Y anchor with provided connecting anchor and margin
    /// - Parameters:
    ///   - anchor: connecting anchor
    ///   - margin: margin with relating anchor
    /// - Returns: newly constructed centerY anchor
    func getCenterY(with anchor: NSLayoutYAxisAnchor,
                    margin: CGFloat) -> NSLayoutConstraint
    
    /// Creates width anchor with provided relation and constant value
    /// - Parameters:
    ///   - constant: diemention value
    ///   - relation: relation between anchors
    /// - Returns: newly constructed width anchor
    func getWidth(with constant: CGFloat,
                  relation: ConstraintRelation) -> NSLayoutConstraint
    
    /// Creates height anchor with provided relation and constant value
    /// - Parameters:
    ///   - constant: diemention value
    ///   - relation: relation between anchors
    /// - Returns: newly constructed height anchor
    func getHeight(with constant: CGFloat,
                   relation: ConstraintRelation) -> NSLayoutConstraint
    
}
