//
//  CollectionViewController.swift
//  GachaApp
//
//  Created by Nobuhiro Takahashi on 2018/07/01.
//  Copyright © 2018年 Nobuhiro Takahashi. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func doneButtonWasTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return PrizeManager.sharedInstance.list.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "prizeCell", for: indexPath)
        return cell
    }
    
}
