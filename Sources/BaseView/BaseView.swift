//
//  BaseView.swift
//  CoreUIKit
//
//  Created by Manish on 02/09/21.
//

/// Abstract representation of any view that provides data driven setups
public protocol BaseView {
    
    associatedtype ViewModel: BaseViewModel
    /// Data model
    var viewModel: ViewModel? { get }
    
    /// Provides setups for views
    func setupViews()
    
    /// Provides setups for data used/presented by views
    func setupData()
    
}
