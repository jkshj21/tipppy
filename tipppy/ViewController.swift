//
//  ViewController.swift
//  tipppy
//
//  Created by Joohyong Han on 12/24/16.
//  Copyright © 2016 Joohyong Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var percentArray: UISegmentedControl!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tippy Calculator"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        
        view.endEditing(true)
    }
    
    @IBAction func Calcu(_ sender: AnyObject) {
        
        let tipIndex = [0.18, 0.20, 0.25]
        let bill = Double(textField.text!) ?? 0
        let tip = bill * tipIndex[percentArray.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)
        
    }
}

