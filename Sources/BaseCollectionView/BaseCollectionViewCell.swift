//
//  BaseCollectionViewCell.swift
//  CoreUIKit
//
//  Created by Manish on 16/10/21.
//

import UIKit

/// Provides core features for `UICollectionViewCell` with data model and setups
open class BaseCollectionViewCell<ViewModel: BaseViewModel>: UICollectionViewCell, BaseView {
    
    /// Data model for the cell
    public var viewModel: ViewModel? {
        didSet {
            self.setupData()
        }
    }
    
    /// Sets the views of the cell
    open func setupViews() { }
    
    /// Sets the data for views in the cell
    open func setupData() { }
    
    
}
