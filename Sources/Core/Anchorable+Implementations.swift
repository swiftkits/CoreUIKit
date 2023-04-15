//
//  Anchorable+Implementations.swift
//  CoreUIKit
//
//  Created by Manish on 15/04/23.
//

import UIKit


public extension Anchorable {
    
    @discardableResult
    func allAnchorsSame(on parentView: UIView,
                        margin: UIEdgeInsets = .zero) -> Self {
        self.leading(with: parentView.leadingAnchor, margin: margin.left)
            .trailing(with: parentView.trailingAnchor, margin: margin.right)
            .top(with: parentView.topAnchor, margin: margin.top)
            .bottom(with: parentView.bottomAnchor, margin: margin.bottom)

        return self
    }
    
    @discardableResult
    func leading(with anchor: NSLayoutXAxisAnchor,
                 relation: ConstraintRelation = .equal,
                 margin: CGFloat = .zero) -> Self {
        let leadingAnchor = self.getLeading(with: anchor, relation: relation, margin: margin)
        self.setConstraintIdentifier(for: "leading", for: leadingAnchor)

        leadingAnchor.isActive = true

        return self
    }
    
    @discardableResult
    func trailing(with anchor: NSLayoutXAxisAnchor,
                  relation: ConstraintRelation = .equal,
                  margin: CGFloat = .zero) -> Self {
        let trailingAnchor = self.getTrailing(with: anchor, relation: relation, margin: margin)
        self.setConstraintIdentifier(for: "trailing", for: trailingAnchor)
        
        trailingAnchor.isActive = true

        return self
    }
    
    @discardableResult
    func top(with anchor: NSLayoutYAxisAnchor,
             relation: ConstraintRelation = .equal,
             margin: CGFloat = .zero) -> Self {
        let topAnchor = self.getTop(with: anchor, relation: relation, margin: margin)
        self.setConstraintIdentifier(for: "top", for: topAnchor)

        topAnchor.isActive = true

        return self
    }
    
    @discardableResult
    func bottom(with anchor: NSLayoutYAxisAnchor,
                relation: ConstraintRelation = .equal,
                margin: CGFloat = .zero) -> Self {
        let bottomAnchor = self.getBottom(with: anchor, relation: relation, margin: margin)
        self.setConstraintIdentifier(for: "bottom", for: bottomAnchor)
        
        bottomAnchor.isActive = true
        return self
    }
    
    @discardableResult
    func with(width: CGFloat? = nil,
              height: CGFloat? = nil) -> Self {
        
        if let safeWidth = width {
            self.width(value: safeWidth, relation: .equal)
        }
        
        if let safeHeight = height {
            self.height(value: safeHeight, relation: .equal)
        }
        
        return self
    }
    
    @discardableResult
    func width(value: CGFloat, relation: ConstraintRelation) -> Self {
        let widthAnchor = self.getWidth(with: value, relation: relation)
        self.setConstraintIdentifier(for: "width", for: widthAnchor)
        widthAnchor.isActive = true
        
        return self
    }
    
    @discardableResult
    func height(value: CGFloat, relation: ConstraintRelation) -> Self {
        let heightAnchor = self.self.getHeight(with: value, relation: relation)
        self.setConstraintIdentifier(for: "height", for: heightAnchor)
        
        heightAnchor.isActive = true
        
        return self
    }
    
    @discardableResult
    func centerX(with anchor: NSLayoutXAxisAnchor,
                 margin: CGFloat = .zero) -> Self {
        let centerXAnchor = self.getCenterX(with: anchor, margin: margin)
        self.setConstraintIdentifier(for: "centerX", for: centerXAnchor)

        centerXAnchor.isActive = true

        return self
    }
    
    @discardableResult
    func centerY(with anchor: NSLayoutYAxisAnchor,
                 margin: CGFloat = .zero) -> Self {
        let centerYAnchor = self.getCenterY(with: anchor, margin: margin)
        self.setConstraintIdentifier(for: "centerY", for: centerYAnchor)

        centerYAnchor.isActive = true

        return self
    }
    
    @discardableResult
    func center(on parentView: UIView,
                with size: CGSize) -> Self {
        self.centerX(with: parentView.centerXAnchor)
            .centerY(with: parentView.centerYAnchor)
            .with(width: size.width, height: size.height)
        
        return self
    }
    
}
