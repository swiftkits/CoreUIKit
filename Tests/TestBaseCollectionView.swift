//
//  TestBaseCollectionView.swift
//  CoreUIKitTests
//
//  Created by Manish on 16/10/21.
//

@testable import CoreUIKit
import XCTest

class TestBaseCollectionView: XCTestCase {
    
    private var sut: BaseCollectionView!
    private let layout = UICollectionViewFlowLayout()
    private let indexPath = IndexPath(row: 0, section: 0)
    
    override func setUp() {
        super.setUp()
        
        self.sut = BaseCollectionView(layout: self.layout)
    }
    
    override func tearDown() {
        super.tearDown()
        
        self.sut = nil
    }
    
}

// MARK: - Initial test
extension TestBaseCollectionView {
    
    func test_BaseTableView_default_init_success() {
        XCTAssertFalse(self.sut.bounces)
    }
    
}

// MARK: - Register cells
extension TestBaseCollectionView {
    
    func test_BaseTableView_cellRegistration_success() {
        // Register a new cell
        self.sut.register(UICollectionViewCell.self)
        
        // Dequeu registered cell
        let _dequeuedCell = self.sut.dequeue(UICollectionViewCell.self, for: self.indexPath)
        
        XCTAssertNotNil(_dequeuedCell)
    }
    
}

// MARK: - Dequeue cells
extension TestBaseCollectionView {
    
    func test_BaseTableView_cellDequeue_success() {
        // Register a new cell
        self.sut.register(UICollectionViewCell.self)
        
        // Dequeu registered cell
        let _dequeuedCell = self.sut.dequeue(UICollectionViewCell.self, for: self.indexPath)
        
        XCTAssertNotNil(_dequeuedCell)
        XCTAssertTrue(_dequeuedCell!.isKind(of: UICollectionViewCell.self))
    }
    
    func test_BaseTableView_cellDequeue_failed() {
        // Don't register cell
        
        // Dequeu cell
        let _dequeuedCell = self.sut.dequeue(UICollectionViewCell.self, for: self.indexPath)
        
        XCTAssertNil(_dequeuedCell)
        XCTAssertFalse(_dequeuedCell?.isKind(of: UICollectionViewCell.self) ?? false)
    }
    
}
