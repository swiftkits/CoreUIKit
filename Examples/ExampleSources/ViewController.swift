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
        self.view.set(identifier: "self.view(rootViewOfVC)")
        
        self.redView.backgroundColor = .red
        self.redView
            .set(identifier: "redView")
            .add(to: self.view)
            .leading(with: self.view.leadingAnchor)
            .top(with: self.view.safeAreaLayoutGuide.topAnchor)
            .with(width: 150, height: 150)
        
        self.yellowView.backgroundColor = .yellow
        self.yellowView
            .set(identifier: "yellowView")
            .add(to: self.view)
            .leading(with: self.redView.trailingAnchor)
            .trailing(with: self.view.trailingAnchor)
            .top(with: self.view.safeAreaLayoutGuide.topAnchor)
            .with(height: 150)
    }


}

