//
//  Settings.swift
//  ShouldIBuyThis
//
//  Created by Beh on 2019-12-31.
//  Copyright © 2019 Beh. All rights reserved.
//

import UIKit

class Settings: UIViewController {
    //SETTINGS
    //Changes the value of changeSettings to 1 so that after modifying the settings, it will go back to the home page rather than the next page.
    //For example if user changes his/her income, it will take him/her to the home page not the second page.
    @IBAction func MonthlyIncome(_ sender: Any) {
        FirstPart.ChangeSettings = 1
        performSegue(withIdentifier: "settingstoincome", sender: self)
    }
    @IBAction func MonthlyFood(_ sender: Any) {
        FirstPart.ChangeSettings = 1
        performSegue(withIdentifier: "settingstofood", sender: self)
    }
    
    @IBAction func MonthlyRent(_ sender: Any) {
        FirstPart.ChangeSettings = 1
        performSegue(withIdentifier: "settingstohouse", sender: self)
    }
    @IBAction func MonthlyCar(_ sender: Any) {
        FirstPart.ChangeSettings = 1
        performSegue(withIdentifier: "settingstocar", sender: self)
    }
    @IBAction func MonthlyOther(_ sender: Any) {
        FirstPart.ChangeSettings = 1
        performSegue(withIdentifier: "settingstoother", sender: self)
    }
    override func viewDidLoad() {
    super.viewDidLoad()
    
}
}
