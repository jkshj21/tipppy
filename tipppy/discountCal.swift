//
//  discountCal.swift
//  tipppy
//
//  Created by Joohyong Han on 12/24/16.
//  Copyright © 2016 Joohyong Han. All rights reserved.
//

import UIKit

class discountCal: UIViewController {

    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var savingLabel: UILabel!
    @IBOutlet var discountLabel: UITextField!
    @IBOutlet var priceLabel: UITextField!
    
    @IBOutlet var percent: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func priceAction(_ sender: AnyObject) {
        let array = [0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5,0.55]
        let price = Double(priceLabel.text!) ?? 0
        let saving = price * array[percent.selectedSegmentIndex]
        let total = price * (1.0-array[percent.selectedSegmentIndex])
        
        savingLabel.text = String(format: "$%0.2f", saving)
        totalLabel.text = String(format: "$%0.2f", total)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
