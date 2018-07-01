//
//  Prize.swift
//  GachaApp
//
//  Created by Nobuhiro Takahashi on 2018/07/01.
//  Copyright © 2018年 Nobuhiro Takahashi. All rights reserved.
//

import Foundation

class Prize: NSObject {
    
    var name: String
    var probability: Double
    var prizesNo = 0
    let lotVolume = 10000.0
    
    init(name: String, probability: Double){
        self.name = name
        self.probability = probability
    }
    
    func number() -> Int {
        return Int(Double(lotVolume) * Double(probability/100))
    }
}
