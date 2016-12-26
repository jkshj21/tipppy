//
//  SettingsViewController.swift
//  tipppy
//
//  Created by Joohyong Han on 12/24/16.
//  Copyright © 2016 Joohyong Han. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet var tipSwitch: UISwitch!
    @IBOutlet var discountSwitch: UISwitch!
    @IBOutlet var done: UIButton!
    
    @IBAction func tSwitch(_ sender: AnyObject) {
        if(tipSwitch.isOn==true) {
            discountSwitch.setOn(false, animated: true)
        }
        else {
            discountSwitch.setOn(true, animated: true)
        }
    }
    @IBAction func dSwitch(_ sender: AnyObject) {
        if(discountSwitch.isOn==true) {
            tipSwitch.setOn(false, animated: true)
        }
        else {
            tipSwitch.setOn(true, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
