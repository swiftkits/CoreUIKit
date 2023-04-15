//
//  Anchorable.swift
//  CoreUIKit
//
//  Created by Manish on 17/10/21.
//

import UIKit

/// Provides useful features for anything that supports adding constraints to itself.
/// Best usecases are Views and Guides.
public protocol Anchorable {
    /// Adds current view to provided parent view (if it's not already added)
    /// - Parameter parentView: a view on which current view (child view) needs to be added
    /// - Returns: current view
    @discardableResult
    func add(to parentView: UIView) -> Self
    
    
    /// Sets `accessibilityIdentifier` on current view
    @discardableResult
    func set(identifier: String) -> Self
    
    
    /// Sets leading, trailing, top and bottom anchors equal to parent view's anchors
    /// - Parameters:
    ///   - parentView: a view on which current view (child view) needs to be constrained
    ///   - margin: margin around the constraints
    /// - Returns: current view
    @discardableResult
    func allAnchorsSame(on parentView: UIView, margin: UIEdgeInsets) -> Self
    
    
    /// Sets leading anchor of the current view to provided anchor
    /// - Parameters:
    ///   - anchor: anchor value, which will be applied as leading anchor on current view
    ///   - relation: relation between current view and relative contraint
    ///   - margin: leading margin / left margin from current view
    /// - Returns: current view
    @discardableResult
    func leading(with anchor: NSLayoutXAxisAnchor,
                 relation: ConstraintRelation,
                 margin: CGFloat) -> Self
    
    
    /// Sets trailing anchor of the current view to provided anchor
    /// - Parameters:
    ///   - anchor: anchor value, which will be applied as trailing anchor on current view
    ///   - relation: relation between current view and relative contraint
    ///   - margin: trailing margin / right margin from current view
    /// - Returns: current view
    @discardableResult
    func trailing(with anchor: NSLayoutXAxisAnchor,
                  relation: ConstraintRelation,
                  margin: CGFloat) -> Self
    
    
    /// Sets top anchor of the current view to provided anchor
    /// - Parameters:
    ///   - anchor: anchor value, which will be applied as top anchor on current view
    ///   - relation: relation between current view and relative contraint
    ///   - margin: top margin from current view
    /// - Returns: current view
    @discardableResult
    func top(with anchor: NSLayoutYAxisAnchor,
             relation: ConstraintRelation,
             margin: CGFloat) -> Self
    
    
    /// Sets bottom anchor of the current view to provided anchor
    /// - Parameters:
    ///   - anchor: anchor value, which will be applied as bottom anchor on current view
    ///   - relation: relation between current view and relative contraint
    ///   - margin: bottom margin from current view
    /// - Returns: current view
    @discardableResult
    func bottom(with anchor: NSLayoutYAxisAnchor,
                relation: ConstraintRelation,
                margin: CGFloat) -> Self
    
    
    /// Sets width and heoght anchor with given value on current view
    /// - Parameters:
    ///   - width: width value
    ///   - height: height value
    /// - Returns: current view
    @discardableResult
    func with(width: CGFloat?, height: CGFloat?) -> Self
    
    
    /// Sets width anchor for the current view to provided value and relation
    /// - Parameters:
    ///   - value: `CGFloat` value of width
    ///   - relation: type of width value relation
    /// - Returns: current view
    @discardableResult
    func width(value: CGFloat, relation: ConstraintRelation) -> Self
    
    
    /// Sets height anchor for the current view to provided value and relation
    /// - Parameters:
    ///   - value: `CGFloat` value of height
    ///   - relation: type of height value relation
    /// - Returns: current view
    @discardableResult
    func height(value: CGFloat, relation: ConstraintRelation) -> Self
    
    
    /// Sets centerX anchor of the current view to provided anchor
    /// - Parameters:
    ///   - anchor: anchor value, which will be applied as centerX anchor on current view
    ///   - margin: margin from current view on X-axis
    /// - Returns: current view
    @discardableResult
    func centerX(with anchor: NSLayoutXAxisAnchor, margin: CGFloat) -> Self
    
    /// Sets centerY anchor of the current view to provided anchor
    /// - Parameters:
    ///   - anchor: anchor value, which will be applied as centerY anchor on current view
    ///   - margin: margin from current view on Y-axis
    /// - Returns: current view
    @discardableResult
    func centerY(with anchor: NSLayoutYAxisAnchor, margin: CGFloat) -> Self
    
    
    /// Sets center (X & Y) anchor of the current view to provided anchor
    /// - Parameters:
    ///   - anchor: anchor value, which will be applied as centerX & centerY anchor on current view
    ///   - size: with and height value for current view
    /// - Returns: current view
    @discardableResult
    func center(on parentView: UIView, with size: CGSize) -> Self
    
    
    /// Sets identifier for given constraints
    func setConstraintIdentifier(for anchorType: String, for constraint: NSLayoutConstraint)
}
