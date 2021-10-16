//
//  ViewController.swift
//  CoreUIKitExample
//
//  Created by Manish on 16/10/21.
//

import UIKit
import CoreUIKit

class ViewController: UIViewController {

    let redView = UIView()
    let yellowView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        self.redView.backgroundColor = .red
        self.redView
            .add(to: self.view)
            .leading(with: self.view.leadingAnchor)
            .top(with: self.view.safeAreaLayoutGuide.topAnchor)
            .with(width: 200, height: 150)
        
        self.yellowView.backgroundColor = .yellow
        self.yellowView
            .set(identifier: "yellowView")
            .add(to: self.view)
            .leading(with: self.redView.trailingAnchor)
            .top(with: self.view.safeAreaLayoutGuide.topAnchor)
            .bottom(with: self.view.bottomAnchor)
            .with(width: 200, height: 150)
    }


}

