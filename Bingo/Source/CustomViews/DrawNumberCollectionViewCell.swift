//
//  DrawNumberCollectionViewCell.swift
//  Bingo
//
//  Created by Tulio Bazan on 27/07/19.
//  Copyright © 2019 tucobz. All rights reserved.
//

import UIKit

class DrawNumberCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var numberLabel: UILabel!
    
    func configure(number: Int, isSorted: Bool) {
        numberLabel.text = "\(number)"
        if isSorted {
            numberLabel.textColor = .red
        } else {
            numberLabel.textColor = .lightGray
        }
    }
}
