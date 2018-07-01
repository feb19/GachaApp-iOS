//
//  ResultViewController.swift
//  GachaApp
//
//  Created by Nobuhiro Takahashi on 2018/07/01.
//  Copyright © 2018年 Nobuhiro Takahashi. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    var lotting = false
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var lotLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
        if lotting {
            lot()
        }
    }
    
    func lot() {
        let prizesNo = arc4random_uniform(10000)
//        let prizes = PrizeManager.sharedInstance.list.count
        print("this time's lot number: \(prizesNo)")
        lotLabel.text = "\(prizesNo)"
        
        var k = 0
        for prize in PrizeManager.sharedInstance.list {
            k = k + prize.number()
            if Int(prizesNo) < k {
                result(prize: prize)
                break
            }
        }
    }
    func result(prize: Prize) {
        resultLabel.text = prize.name
        lotting = false
    }
    @IBAction func againButtonWasTapped(_ sender: Any) {
        lotting = true
        lot()
    }
    @IBAction func backButtonWasTapped(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    @IBAction func collectionButtonWasTapped(_ sender: Any) {
    }
}
