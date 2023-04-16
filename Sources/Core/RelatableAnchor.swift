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
    case leading(_ relatingView: UIView, _ relatingAnchor: AnchorX = .leading, _ relation: ConstraintRelation = .equal, margin: CGFloat = .zero)
    case trailing(_ relatingView: UIView, _ relatingAnchor: AnchorX = .trailing, _ relation: ConstraintRelation = .equal, margin: CGFloat = .zero)
    case top(_ relatingView: UIView, _ relatingAnchor: AnchorY = .top, _ relation: ConstraintRelation = .equal, margin: CGFloat = .zero)
    case bottom(_ relatingView: UIView, _ relatingAnchor: AnchorY = .bottom, _ relation: ConstraintRelation = .equal, margin: CGFloat = .zero)
    case width(relation: ConstraintRelation = .equal, _ value: CGFloat)
    case height(relation: ConstraintRelation = .equal, _ value: CGFloat)
}
