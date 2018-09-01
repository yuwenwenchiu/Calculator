//
//  ViewController.swift
//  Calculator
//
//  Created by Yuwen Chiu on 2018/8/28.
//  Copyright © 2018年 YuwenChiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var wonLabel: UILabel!
    @IBOutlet weak var eurLabel: UILabel!
    @IBOutlet weak var pndLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculator(_ sender: Any) {
        
        view.endEditing(true)
        
        let ntdPrice = Double(priceTextField.text!)
        
        if ntdPrice != nil {
            let yenPrice = ntdPrice! * 3.58
            let yenString = String(format:  "%.2f", yenPrice)
            yenLabel.text = "\(yenString)"
            
            let wonPrice = ntdPrice! * 33.61
            let wonString = String(format:  "%.2f", wonPrice)
            wonLabel.text = "\(wonString)"
            
            let eurPrice = ntdPrice! * 0.028
            let eurString = String(format:  "%.2f", eurPrice)
            eurLabel.text = "\(eurString)"
            
            let pndPrice = ntdPrice! * 0.024
            let pndString = String(format:  "%.2f", pndPrice)
            pndLabel.text = "\(pndString)"
        }

    }    
    
}

