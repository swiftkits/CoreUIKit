//
//  MyCustomViewController.swift
//
//
//  Created by Manish on 17/04/23.
//

import CoreUIKit


class MyCustomViewController {
    // MARK: - Views
    private let customView = UIView()
    
    ...
    
    // MARK: - Setups
    func setupCustomView() {
        self.customView
            .add(to: self.view)
            .leading(with: self.customView.leadingAnchor, margin: 50)
        
        // or
        
        self.customView
            .plug(to: self.view,
                  having: [
                    .leading(self.customView, .leading, margin: 50),
                  ])
    }
}
