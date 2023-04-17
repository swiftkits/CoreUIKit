//
//  Anchor.swift
//  CoreUIKit
//
//  Created by Manish on 15/04/23.
//

import Foundation


/// Type of the Anchors used to create constraint/relations on X Axis
public enum AnchorX: String {
    /// Leading Anchor
    case leading
    /// Trailing Anchor
    case trailing
    /// Center on x-axis
    case centerX
}

/// Type of the Anchors used to create constraint/relations on Y Axis
public enum AnchorY: String {
    /// Top Anchor
    case top
    /// Bottom Anchor
    case bottom
    /// Center on y-axis
    case centerY
}

/// Type of the Anchors used to create constraint/relations with diemention
public enum AnchorDiemention {
    /// Width Anchor with value
    case width(value: CGFloat)
    /// Height Anchor with value
    case height(value: CGFloat)
}
