//
//  RelatableAnchor.swift
//  CoreUIKit
//
//  Created by Manish on 16/04/23.
//

import UIKit

/// An structure of two view's anchor relations.
///
/// - Let's say view `A` is connected to view `B`, relating same would have some data like `A.leading = B.trailing`
///
public enum RelatableAnchor {
    /// Leading anchor with relating anchor and data
    case leading(_ relatingView: UIView, _ relatingAnchor: AnchorX = .leading, _ relation: ConstraintRelation = .equal, margin: CGFloat = .zero)
    /// Trailing anchor with relating anchor and data
    case trailing(_ relatingView: UIView, _ relatingAnchor: AnchorX = .trailing, _ relation: ConstraintRelation = .equal, margin: CGFloat = .zero)
    /// Top anchor with relating anchor and data
    case top(_ relatingView: UIView, _ relatingAnchor: AnchorY = .top, _ relation: ConstraintRelation = .equal, margin: CGFloat = .zero)
    /// Bottom anchor with relating anchor and data
    case bottom(_ relatingView: UIView, _ relatingAnchor: AnchorY = .bottom, _ relation: ConstraintRelation = .equal, margin: CGFloat = .zero)
    /// Center on x axis anchor with relating anchor and data
    case centerX(_ relatingView: UIView, _ relatingAnchor: AnchorX = .centerX, margin: CGFloat = .zero)
    /// Center on y axis anchor with relating anchor and data
    case centerY(_ relatingView: UIView, _ relatingAnchor: AnchorY = .centerY, margin: CGFloat = .zero)
    /// Width anchor with relating anchor and data
    case width(relation: ConstraintRelation = .equal, _ value: CGFloat)
    /// Height anchor with relating anchor and data
    case height(relation: ConstraintRelation = .equal, _ value: CGFloat)
}
