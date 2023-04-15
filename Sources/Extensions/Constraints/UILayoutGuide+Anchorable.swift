//
//  UILayoutGuide+Anchorable.swift
//  CoreUIKit
//
//  Created by Manish on 17/10/21.
//

import UIKit

// MARK: - Add
extension UILayoutGuide: Anchorable {
    
    /// Adds current view to provided parent view (if it's not already added)
    /// - Parameter parentView: a view on which current view (child view) needs to be added
    /// - Returns: current view
    @discardableResult
    public func add(to parentView: UIView) -> Self {
        // Add
        parentView.addLayoutGuide(self)
        
        return self
    }
    
    /// Sets `accessibilityIdentifier` on current view
    @discardableResult
    public func set(identifier: String) -> Self {
        self.identifier = identifier
        
        return self
    }
}

public extension UILayoutGuide {
    
    func setConstraintIdentifier(for anchorType: String, for constraint: NSLayoutConstraint) {
        
        if !self.identifier.isEmpty && !anchorType.isEmpty {
            constraint.identifier = "\(self.identifier)_\(anchorType)Anchor"
        }
    }
    
}
