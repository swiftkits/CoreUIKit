//
//  AnchorPluggable.swift
//  CoreUIKit
//
//  Created by Manish on 16/04/23.
//

import UIKit


/// A mechanism to plug a given view into any other using relative anchors and margins
public protocol AnchorPluggable {
    
    /// Plugs in the provided anchors with thier relation to the view
    /// - Parameter
    /// -   parentView: view on which 
    ///     - anchorsWithRelations: anchors with their relations
    /// - Returns: current view
    func plug(to parentView: UIView, having anchorsWithRelations: [RelatableAnchor]) -> Self
    
}
