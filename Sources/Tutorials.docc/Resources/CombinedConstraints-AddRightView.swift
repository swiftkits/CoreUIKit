//
//  MyCustomViewController.swift
//
//
//  Created by Manish on 17/04/23.
//

import CoreUIKit


class MyCustomViewController {
    // MARK: - Views
    private let customStackView = UIStackView()
    private let stackedView1 = UIView()
    private let stackedView2 = UIView()
    private let stackedView3 = UIView()
    
    private let rightMostView = UIView()
    
    ...
    
    // MARK: - Setups
    func setupStackView() {
        self.customStackView.axis = .vertical
        self.customStackView.distribution = .fillEqually
        self.customStackView.alignment = .fill
        self.customStackView.spacing = 10
        
        self.customStackView
            .plug(to: self.view,
                  having: [
                    .leading(self.view, .leading, margin: 20),
                    .top(self.view, .top, margin: 20),
                    .bottom(self.view, .bottom, margin: -20),
                    .width(200)
                  ])
        
        self.customStackView.addArrangedSubview(self.stackedView1)
        self.customStackView.addArrangedSubview(self.stackedView2)
        self.customStackView.addArrangedSubview(self.stackedView3)
        
    }
    
    func setupRightMostView() {
        self.rightMostView
            .plug(to: self.view,
                  having: [
                    .leading(self.customStackView, .trailing, margin: 20),
                    .top(self.view, .top, margin: 20),
                    .bottom(self.view, .bottom, margin: -20),
                    .trailing(self.view, .trailing, margin: -20),
                  ])
    }
}
