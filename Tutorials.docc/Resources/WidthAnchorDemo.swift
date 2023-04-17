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
            .width(...)
        
        // or
        
        self.customView
            .plug(to: self.view,
                  having: [
                    .width(...)
                  ])
        
        // don't worry about this code, you will learn these in detail in coming chapters.
    }
}
