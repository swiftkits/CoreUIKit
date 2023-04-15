//
//  Anchor.swift
//  CoreUIKit
//
//  Created by Manish on 15/04/23.
//

import Foundation


/// Type of the Anchors used to create constraint/relations
public enum Anchor {
    /// Leading Anchor
    case leading
    /// Trailing Anchor
    case trailing
    /// Top Anchor
    case top
    /// Bottom Anchor
    case bottom
    /// Width Anchor with value
    case width(value: CGFloat)
    /// Height Anchor with value
    case height(value: CGFloat)
}
