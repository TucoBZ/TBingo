//
//  DrawedViewController.swift
//  Bingo
//
//  Created by Tulio Bazan on 27/07/19.
//  Copyright © 2019 tucobz. All rights reserved.
//

import UIKit
import TBingo

class DrawedViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }
}

extension DrawedViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return TBingoManager.shared.bingo.numberOfItens
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DrawNumberCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let cellNumber = indexPath.row + 1
        cell.configure(number: cellNumber, isSorted: TBingoManager.shared.bingo.isSorted(cellNumber))
        
        return cell
    }
    
    
}
