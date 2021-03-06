//
//  ViewController.swift
//  Tippy
//
//  Created by Aung Myint on 12/28/18.
//  Copyright © 2018 Aung Myint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
     @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    

    @IBAction func onTap(sender: AnyObject) {
       view.endEditing(true)
    }
    @IBAction func calculateTip(sender: AnyObject) {
        let tipPercentages=(0.18,0.2,0.25)
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

