//
//  ConstraintRelation.swift
//  CoreUIKit
//
//  Created by Manish on 16/10/21.
//

import Foundation

/// Core relation type between any two constraints
public enum ConstraintRelation {
    /// `equal` relation between any two contrains
    case equal
    /// `greaterOrEqual` relation between any two contrains
    case greaterOrEqual
    /// `lessOrEqual` relation between any two contrains
    case lessOrEqual
}
