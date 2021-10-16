//
//  BaseViewModel.swift
//  CoreUIKit
//
//  Created by Manish on 02/09/21.
//

/// Data model used by view for it's presentation
public protocol BaseViewModel {
    
    /// Initializes data from either remote or local repositories
    func initializeData()
    
}

public extension BaseViewModel {
    
    func initializeData() { }
    
}
