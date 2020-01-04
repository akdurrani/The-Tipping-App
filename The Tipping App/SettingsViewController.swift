//
//  SettingsViewController.swift
//  The Tipping App
//
//  Created by Azmeh Durrani on 1/3/20.
//  Copyright © 2020 Azmeh Durrani. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        defaultControl.selectedSegmentIndex = defaults.integer(forKey: "defaultTip")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func setDefault(_ sender: Any) {
        //let tipPercentages = [0.15, 0.18, 0.20]
        //let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let defaults = UserDefaults.standard
        defaults.set(defaultControl.selectedSegmentIndex, forKey: "defaultTip")
        defaults.synchronize()
    }
    
}
