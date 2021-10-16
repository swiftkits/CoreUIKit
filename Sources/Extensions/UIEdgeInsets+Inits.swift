//
//  UIEdgeInsets+Inits.swift
//  CoreUIKit
//
//  Created by Manish on 16/10/21.
//

import UIKit

public extension UIEdgeInsets {
    
    /// Initializes `UIEdgeInsets` with all four edges in params
    /// - Parameters:
    ///   - top: value for top edge
    ///   - left: value for left edge
    ///   - bottom: value for bottom edge
    ///   - right: value for right edge
    init(top: CGFloat = 0, left: CGFloat = 0,
         bottom: CGFloat = 0, right: CGFloat = 0) {
        self.init()
        
        self.top = top
        self.left = left
        self.bottom = bottom
        self.right = right
    }
    
    /// Initializes `UIEdgeInsets` with grouping top,bottom and left,right edges in params
    /// - Parameters:
    ///   - topBottom: value for top and bottom edge
    ///   - leftRight: value for left and right edge
    init(topBottom: CGFloat = 0, leftRight: CGFloat = 0) {
        self.init()
        
        self.top = topBottom
        self.bottom = topBottom
        self.left = leftRight
        self.right = leftRight
    }
    
}
