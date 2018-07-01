//
//  PrizeManager.swift
//  GachaApp
//
//  Created by Nobuhiro Takahashi on 2018/07/01.
//  Copyright © 2018年 Nobuhiro Takahashi. All rights reserved.
//

import Foundation

class PrizeManager {
    static let sharedInstance = PrizeManager()
    
    let list = [
        Prize(name: "S", probability: 0.01 ),
        Prize(name: "A", probability: 0.49 ),
        Prize(name: "B", probability:  4.5 ),
        Prize(name: "C", probability: 45.0 ),
        Prize(name: "D", probability: 50.0 )
    ]
    
    var colllections = [Prize]()
    
    
    
}
