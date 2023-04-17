//
//  Anchorable+AnchorPluggable.swift
//  CoreUIKit
//
//  Created by Manish on 16/04/23.
//

import UIKit


public extension Anchorable {
    
    @discardableResult
    func plug(to parentView: UIView, having anchorsWithRelations: [RelatableAnchor]) -> Self {
        self.add(to: parentView)
        
        anchorsWithRelations.forEach { relatableAnchor in
            switch relatableAnchor {
            case .leading(let relatingView, let relatingAnchor, let relation, let margin):
                self.leading(with: self.getAnchor(for: relatingView, with: relatingAnchor),
                             relation: relation,
                             margin: margin)
            case .trailing(let relatingView, let relatingAnchor, let relation, let margin):
                self.trailing(with: self.getAnchor(for: relatingView, with: relatingAnchor),
                             relation: relation,
                             margin: margin)
            case .top(let relatingView, let relatingAnchor, let relation, let margin):
                self.top(with: self.getAnchor(for: relatingView, with: relatingAnchor),
                             relation: relation,
                             margin: margin)
            case .bottom(let relatingView, let relatingAnchor, let relation, let margin):
                self.bottom(with: self.getAnchor(for: relatingView, with: relatingAnchor),
                             relation: relation,
                             margin: margin)
            case .centerX(let relatingView, let relatingAnchor, margin: let margin):
                self.centerX(with: self.getAnchor(for: relatingView, with: relatingAnchor),
                             margin: margin)
            case .centerY(let relatingView, let relatingAnchor, margin: let margin):
                self.centerY(with: self.getAnchor(for: relatingView, with: relatingAnchor),
                             margin: margin)
            case .width(let relation, let value):
                self.width(value: value, relation: relation)
            case .height(let relation, let value):
                self.height(value: value, relation: relation)
            }
        }

        return self
    }
    
}

extension Anchorable {
    
    func getAnchor(for view: UIView, with anchorType: AnchorX) -> NSLayoutXAxisAnchor {
        switch anchorType {
        case .leading:
            return view.leadingAnchor
        case .trailing:
            return view.trailingAnchor
        case .centerX:
            return view.centerXAnchor
        }
    }
    
    func getAnchor(for view: UIView, with anchorType: AnchorY) -> NSLayoutYAxisAnchor {
        switch anchorType {
        case .top:
            return view.topAnchor
        case .bottom:
            return view.bottomAnchor
        case .centerY:
            return view.centerYAnchor
        }
    }
    
}
