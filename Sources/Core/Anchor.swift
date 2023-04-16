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
}

/// Type of the Anchors used to create constraint/relations on Y Axis
public enum AnchorY: String {
    /// Top Anchor
    case top
    /// Bottom Anchor
    case bottom
}

/// Type of the Anchors used to create constraint/relations with diemention
public enum AnchorDiemention {
    /// Width Anchor with value
    case width(value: CGFloat)
    /// Height Anchor with value
    case height(value: CGFloat)
}
