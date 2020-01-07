//
//  SecondPage.swift
//  ShouldIBuyThis
//
//  Created by Beh on 2019-12-28.
//  Copyright © 2019 Beh. All rights reserved.
//

import UIKit

class HomePage: UIViewController {
 
    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var Saving: UILabel!
    @IBOutlet weak var Spend: UITextField!
    //converting string value of income, food, house, car and other expenses to int
    let usersIncome = Int(FirstPart.uincome)
    let usersFood = Int(FirstPart.ufood)
    let usersHouse = Int(FirstPart.uhouse)
    let usersCar = Int(FirstPart.ucar)
    let usersOther = Int(FirstPart.uother)
    var saving = 0
    var total = 0
    //shows the total expenses and the amount of money that the user has to save
    override func viewDidLoad() {
        super.viewDidLoad()
        total = (usersFood! + usersHouse! + usersFood! + usersCar! + usersOther!)
        saving = (usersIncome! * 20)/100
        Total.text = "$" + String(total)
        Saving.text = "$" + String(saving)
    }
    //when the calc function is pressed, check if the amount of money left after the expeses, is greater than the amount that the user has to save each month,
    //if it is greater, it tells the user that he/she can spend that money as long as it is less than or equal to the amount of money left after saving.
    @IBAction func calButton(_ sender: Any) {
        let moneyLeft = usersIncome! - total
        let moneyLeftAfterSaving = moneyLeft - saving
        let alert1 = UIAlertController(title: "Calculation", message: "Yes, you should. You have $"+String(moneyLeftAfterSaving)+" after saving.", preferredStyle: .alert)
        alert1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        let alert2 = UIAlertController(title: "Calculation", message: "No, you should not. You need to save money", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        if (moneyLeft >= saving && Int(Spend.text!)! <= moneyLeftAfterSaving){
            self.present(alert1, animated: true, completion: nil)
        }
        else {
            self.present(alert2, animated: true, completion: nil)
        }
        
    }
    
}
