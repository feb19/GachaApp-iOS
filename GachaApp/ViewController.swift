//
//  ViewController.swift
//  GachaApp
//
//  Created by Nobuhiro Takahashi on 2018/07/01.
//  Copyright © 2018年 Nobuhiro Takahashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coinLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goButtonWasTapped(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let controller = storyboard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        controller.lotting = true
        self.present(controller, animated: false, completion: nil)
        
    }
    
}

