//
//  TBingoManager.swift
//  Bingo
//
//  Created by Tulio Bazan on 27/07/19.
//  Copyright © 2019 tucobz. All rights reserved.
//

import Foundation

public class TBingoManager {
    public static let shared: TBingoManager = TBingoManager()
    
    public var bingo: BingoTable = BingoTable(numberOfDrawableItens: 150)

    public var bundle: Bundle {
        return Bundle(for: type(of: self))
    }
}
