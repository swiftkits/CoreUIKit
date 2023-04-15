//
//  UIVIew+Anchorable.swift
//  CoreUIKit
//
//  Created by Manish on 03/09/21.
//

import UIKit

// MARK: - Add
extension UIView: Anchorable {
    
    @discardableResult
    public func add(to parentView: UIView) -> Self {
        if self.isDescendant(of: parentView) {
            return self
        }
        
        // Add
        parentView.addSubview(self)
        
        // Enable constraints
        self.translatesAutoresizingMaskIntoConstraints = false
        
        return self
    }
    
    @discardableResult
    public func set(identifier: String) -> Self {
        self.accessibilityIdentifier = identifier
        
        return self
    }
    
    public func setConstraintIdentifier(for anchorType: String, for constraint: NSLayoutConstraint) {
       guard let safeIdentifier = self.accessibilityIdentifier else { return }
       
       if !safeIdentifier.isEmpty && !anchorType.isEmpty {
           constraint.identifier = "\(safeIdentifier)_\(anchorType)Anchor"
       }
   }
}
