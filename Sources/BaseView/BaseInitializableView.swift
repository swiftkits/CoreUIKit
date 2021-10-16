//
//  BaseInitializableView.swift
//  CoreUIKit
//
//  Created by Manish on 02/09/21.
//

/// A view that can be initialized with a data model
public protocol BaseInitializableView: BaseView {
    
    /// Inits view with data model
    ///
    ///  - Parameters:
    ///     - viewModel: Data model used to initialize the view
    init(viewModel: ViewModel)
    
}
