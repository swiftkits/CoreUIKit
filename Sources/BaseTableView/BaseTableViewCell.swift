//
//  BaseTableViewCell.swift
//  CoreUIKit
//
//  Created by Manish on 02/09/21.
//

import UIKit

/// Provides core features for `UITableViewCell` with data model and setups
open class BaseTableViewCell<ViewModel: BaseViewModel>: UITableViewCell, BaseView {
    
    /// Data model for the cell
    public var viewModel: ViewModel? {
        didSet {
            self.setupData()
        }
    }
    
    /// Sets the views of the cell
    open func setupViews() {
        self.selectionStyle = .none
    }
    
    /// Sets the data for views in the cell
    open func setupData() {
        
    }
    
    
}
