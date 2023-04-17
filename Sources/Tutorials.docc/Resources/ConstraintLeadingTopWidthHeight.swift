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
            .top(with: self.customView.topAnchor, margin: 50)
            .width(value: 250)
            .height(value: 250)
        
        // or
        
        self.customView
            .plug(to: self.view,
                  having: [
                    .leading(self.customView, .leading, margin: 50),
                    .top(self.customView, .top, margin: 50),
                    .width(250),
                    .height(250)
                  ])
    }
}
