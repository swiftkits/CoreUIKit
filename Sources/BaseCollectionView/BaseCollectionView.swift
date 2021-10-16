//
//  BaseCollectionView.swift
//  CoreUIKit
//
//  Created by Manish on 16/10/21.
//

import UIKit

/// A view replacing direct use of `UICollectionView` with added features.
public class BaseCollectionView: UICollectionView {
    
    /// Inits `BaseCollectionView` with provided parameters.
    /// - Parameter pullToRefresh: defines the need for pull to refresh feature on `BaseTableView`
    public init(with pullToRefresh: Bool = false,
                layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: layout)
        
        self.bounces = pullToRefresh
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Register and Dequeue cells
public extension BaseCollectionView {
    
    /// Registeres provided cell type with current `BaseCollectionView` instance
    /// - Parameter cellType: type of `UICollectionViewCell`, that needs to be registered
    func register<CellType: UICollectionViewCell>(_ cellType: CellType.Type) {
        self.register(cellType, forCellWithReuseIdentifier: String(describing: cellType))
    }
    
    /// Dequeues reusable registered cell type
    /// - Parameters:
    ///   - cellType: type of `UICollectionViewCell`, that needs to be dequeued
    ///   - indexPath: dequeue for position
    /// - Returns: Cell instance, if it was regstered or `nil`
    func dequeue <CellType: UICollectionViewCell>(_ cellType: CellType.Type,
                                             for indexPath: IndexPath) -> CellType? {
        return self.dequeueReusableCell(withReuseIdentifier: String(describing: cellType),
                                        for: indexPath) as? CellType
    }
    
}
