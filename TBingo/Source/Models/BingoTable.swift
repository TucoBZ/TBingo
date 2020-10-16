//
//  Bingo.swift
//  Bingo
//
//  Created by Tulio Bazan on 27/07/19.
//  Copyright © 2019 tucobz. All rights reserved.
//

import Foundation


public struct BingoTable {
    private var _numbers: [Int]
    private var _drawedNumbers: [Int] = [] {
        didSet {
            _drawedNumbers.sort()
        }
    }
    
    public init(numberOfDrawableItens numberOfItens: Int) {
        _numbers = Array(1...numberOfItens)
    }
    
    public var numberOfItens: Int {
        return _numbers.count + _drawedNumbers.count
    }
    
    public func isSorted(_ number: Int) -> Bool {
      return _drawedNumbers.contains(number)
    }
    
    public mutating func draw() -> Int? {
        if let number = _numbers.randomElement() {
            _numbers = _numbers.filter { (item) -> Bool in
                item != number
            }
            _drawedNumbers.append(number)
            return number
        }
        return nil
    }
}
