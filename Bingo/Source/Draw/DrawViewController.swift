//
//  DrawViewController.swift
//  Bingo
//
//  Created by Tulio Bazan on 27/07/19.
//  Copyright © 2019 tucobz. All rights reserved.
//

import UIKit
import TBingo

class DrawViewController: UIViewController {

    enum State {
        case initial
        case sorted
    }
    
    @IBOutlet weak var drawedNumberLabel: UILabel! {
        didSet {
            drawedNumberLabel.accessibilityIdentifier = "drawedNumberLabel"
        }
    }
    @IBOutlet weak var logoImage: UIImageView! {
        didSet {
            logoImage.image = UIImage(named: "logo", in: TBingoManager.shared.bundle, compatibleWith: nil)

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func draw(_ sender: Any) {
        if let number = TBingoManager.shared.bingo.draw() {
            drawedNumberLabel.text = "\(number)"
        } else {
            drawedNumberLabel.text = "Todos os números sorteados"
        }
    }
}

