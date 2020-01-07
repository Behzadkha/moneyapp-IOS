//
//  ViewController.swift
//  ShouldIBuyThis
//
//  Created by Beh on 2019-12-28.
//  Copyright © 2019 Beh. All rights reserved.
//

import UIKit

extension UIViewController{
    func HideKeyboard(){
        let Tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DismissKeyboard))
        view.addGestureRecognizer(Tap)
    }
    @objc func DismissKeyboard(){
        view.endEditing(true)
    }
}

class FirstPart: UIViewController {
    public static var uincome = "", ufood = "", uhouse = "", ucar = "", uother = ""
    public static var ChangeSettings = 0
    
    @IBAction func NextButton(_ sender: Any) {
        performSegue(withIdentifier: "firsttosecond", sender: self)
    }
    //second page
    @IBOutlet weak var Income: UITextField!
    @IBAction func SaveButton(_ sender: Any) {
        UserDefaults.standard.set(Income.text, forKey: "Income")
        if (FirstPart.ChangeSettings == 1){//if it is comming from the setting page, the value of changesetting is equal to 1
            FirstPart.ChangeSettings = 0
            makeVariablesPublic()
            performSegue(withIdentifier: "secondtohome", sender: self)
        }
        else{
            performSegue(withIdentifier: "secondtothird", sender: self)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.HideKeyboard()
    }
   
    //third page
   
    @IBOutlet weak var FoodExpenses: UITextField!
    @IBAction func SaveButtonTwo(_ sender: Any) {
        UserDefaults.standard.set(FoodExpenses.text, forKey: "FoodExpenses")
        if (FirstPart.ChangeSettings == 1){//if it is comming from the setting page, the value of changesetting is equal to 1
            FirstPart.ChangeSettings = 0
            makeVariablesPublic()
            performSegue(withIdentifier: "thirdtohome", sender: self)
        }
        else{
            performSegue(withIdentifier: "thirdtoforth", sender: self)
        }
    }
    //forth page
    @IBOutlet weak var HouseExpenses: UITextField!
    @IBAction func SaveButtonThree(_ sender: Any) {
        UserDefaults.standard.set(HouseExpenses.text, forKey: "HouseExpenses")
        if (FirstPart.ChangeSettings == 1){//if it is comming from the setting page, the value of changesetting is equal to 1
            FirstPart.ChangeSettings = 0
            makeVariablesPublic()
            performSegue(withIdentifier: "forthtohome", sender: self)
        }
        else{
            performSegue(withIdentifier: "forthtofifth", sender: self)
        }
    }
    //fifth page
    @IBOutlet weak var CarExpenses: UITextField!
    @IBAction func SaveButtonFour(_ sender: Any) {
        UserDefaults.standard.set(CarExpenses.text, forKey: "CarExpenses")
        if (FirstPart.ChangeSettings == 1){//if it is comming from the setting page, the value of changesetting is equal to 1
            FirstPart.ChangeSettings = 0
            makeVariablesPublic()
            performSegue(withIdentifier: "fifthtohome", sender: self)
        }
        else{
            performSegue(withIdentifier: "fifthtosixth", sender: self)
        }
    }
    //sixth page
    @IBOutlet weak var OtherExpenses: UITextField!
    @IBAction func SaveButtonFive(_ sender: Any) {
        UserDefaults.standard.set(OtherExpenses.text, forKey: "OtherExpenses")
        makeVariablesPublic()
        makeVariablesPublic()
        performSegue(withIdentifier: "sixthtohome", sender: self)
    }
    //when all the elements of the first view controller is loaded, check if there is an object in the userDeafualt, if there is go to the home page
    override func viewDidAppear(_ animated: Bool) {
        if self == UIApplication.shared.keyWindow?.rootViewController{
            if let UserIncome = UserDefaults.standard.object(forKey: "Income") as? String{
                makeVariablesPublic()
                performSegue(withIdentifier: "firsttohome", sender: self)
            }
        }
        
    }
    func makeVariablesPublic(){
        //make the user's data accessable by other classes
        FirstPart.uincome = UserDefaults.standard.object(forKey: "Income") as! String
        FirstPart.ufood = UserDefaults.standard.object(forKey: "FoodExpenses") as! String
        FirstPart.uhouse = UserDefaults.standard.object(forKey: "HouseExpenses") as! String
        FirstPart.ucar = UserDefaults.standard.object(forKey: "CarExpenses") as! String
        FirstPart.uother = UserDefaults.standard.object(forKey: "OtherExpenses") as! String
    }
    
    


}


