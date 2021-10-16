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
        
        NSLayoutConstraint.activate([
            self.container.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.container.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            self.container.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30),
            self.container.heightAnchor.constraint(equalToConstant: 200)
        ])
        
    }
    
    func setupUserNameViews() {
        self.userNameLabel
            .add(to: self.view)
            .leading(with: self.container.leadingAnchor)
            .trailing(with: self.container.trailingAnchor)
            .top(with: self.container.topAnchor)
        
        self.userNameTextField
            .add(to: self.view)
            .leading(with: self.container.leadingAnchor)
            .trailing(with: self.container.trailingAnchor)
            .top(with: self.userNameLabel.bottomAnchor, margin: 5)
            .with(height: 50)
        self.userNameTextField.backgroundColor = UIColor.lightGray
        self.userNameTextField.layer.cornerRadius = 8
    }
    
    func setupPasswordViews() {
        self.passwordLabel
            .add(to: self.view)
            .leading(with: self.container.leadingAnchor)
            .trailing(with: self.container.trailingAnchor)
            .top(with: self.userNameTextField.bottomAnchor, margin: 25)
        
        self.passwordTextField
            .add(to: self.view)
            .leading(with: self.container.leadingAnchor)
            .trailing(with: self.container.trailingAnchor)
            .top(with: self.passwordLabel.bottomAnchor, margin: 5)
            .with(height: 50)
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
