//
//  ViewController.swift
//  CoreUIKitExample
//
//  Created by Manish on 16/10/21.
//

import UIKit
import CoreUIKit

class ViewController: UIViewController {

    let userNameLabel = UILabel()
    let userNameTextField = TextField()
    
    let passwordLabel = UILabel()
    let passwordTextField = TextField()
    
    let container = UILayoutGuide()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.view.set(identifier: "self.view(rootViewOfVC)")
        
        self.setupData()
        self.setupViews()
    }

    private func setupViews() {
        self.setupContainer()
        self.setupUserNameViews()
        self.setupPasswordViews()
    }
    
    private func setupData() {
        self.userNameLabel.text = "Username"
        self.passwordLabel.text = "Password"
    }

}

private extension ViewController {
    
    func setupContainer() {
        self.view.addLayoutGuide(self.container)
        
        self.container
            .set(identifier: "container")
            .add(to: self.view)
            .centerY(with: self.view.centerYAnchor)
            .leading(with: self.view.leadingAnchor, margin: 30)
            .trailing(with: self.view.trailingAnchor, margin: -30)
            .with(height: 200)
    }
    
    func setupUserNameViews() {
        self.userNameLabel
            .set(identifier: "userNameLabel")
            .add(to: self.view)
            .leading(with: self.container.leadingAnchor)
            .trailing(with: self.container.trailingAnchor)
            .top(with: self.container.topAnchor)
        
        self.userNameTextField
            .set(identifier: "userNameTextField")
            .add(to: self.view)
            .leading(with: self.userNameLabel.leadingAnchor)
            .trailing(with: self.userNameLabel.trailingAnchor)
            .top(with: self.userNameLabel.bottomAnchor, margin: 5)
            .with(height: 50)
        self.userNameTextField.backgroundColor = UIColor.lightGray
        self.userNameTextField.layer.cornerRadius = 8
    }
    
    func setupPasswordViews() {
        self.passwordLabel
            .set(identifier: "passwordLabel")
            //.add(to: self.view)
            .plug(to: self.view,
                  having: [
                    .leading(self.userNameLabel),
                    .trailing(self.userNameLabel),
                    .top(self.userNameTextField, .bottom, margin: 5)
                  ])
            //.leading(with: self.userNameLabel.leadingAnchor)
            //.trailing(with: self.userNameLabel.trailingAnchor)
            //.top(with: self.userNameTextField.bottomAnchor, margin: 25)
        
        self.passwordTextField
            .set(identifier: "passwordTextField")
            //.add(to: self.view)
            .plug(to: self.view,
                  having: [
                    .leading(self.userNameLabel),
                    .trailing(self.userNameLabel),
                    .top(self.passwordLabel, .bottom, margin: 5),
                    .height(50)
                  ])
            //.leading(with: self.userNameLabel.leadingAnchor)
            //.trailing(with: self.userNameLabel.trailingAnchor)
            //.top(with: self.passwordLabel.bottomAnchor, margin: 5)
            //.with(height: 50)
        self.passwordTextField.backgroundColor = UIColor.lightGray
        self.passwordTextField.layer.cornerRadius = 8
    }
    
}

class TextField: UITextField {
    
    let padding = UIEdgeInsets(leftRight: 10)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
