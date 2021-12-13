//
//  ViewController.swift
//  tipsCalculator
//
//  Created by 蕭鈺蒖 on 2021/12/10.
//

import UIKit

class ViewController: UIViewController {

    // input textField
    @IBOutlet weak var moneyInput: UITextField!
    @IBOutlet weak var tipsInput: UITextField!
    @IBOutlet weak var numOfPeopleInput: UITextField!
    
    // output textField
    @IBOutlet weak var totalOutputLabel: UILabel!
    @IBOutlet weak var avgOutputLabel: UILabel!
    @IBOutlet weak var tipOutputLabel: UILabel!
    
    @IBOutlet weak var warningLabel: UILabel!
    
    
    @IBOutlet weak var peopleStepper: UIStepper!
    
    var total: Double = 0.0
    var tip: Double = 0.0
    var avg: Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalOutputLabel.text = "0"
        tipOutputLabel.text = "0"
        avgOutputLabel.text = "0"
        numOfPeopleInput.text = "1"
        
        
    }
    
    @IBAction func ChangeStepperValue(_ sender: UIStepper) {
        
        numOfPeopleInput.text = Int(sender.value).description
    }
    
    @IBAction func deleteAll(_ sender: UIButton) {
        moneyInput.text = ""
        tipsInput.text = ""
        
        peopleStepper.value = 1.0
        numOfPeopleInput.text = Int(peopleStepper.value).description
        
        totalOutputLabel.text = "0"
        tipOutputLabel.text = "0"
        avgOutputLabel.text = "0"
        
        warningLabel.isHidden = true
        
        
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        refresh()
    }
    
    func refresh(){
        var totalMoneyInput: Double? {
            return Double(moneyInput.text!)
        }
        var tipsPercentage: Double?{
            return Double(tipsInput.text!)
        }
        
        
        var numOfPeople: Double?{
            return Double(numOfPeopleInput.text!)
        }
        
        moneyInput.resignFirstResponder()
        tipsInput.resignFirstResponder()
        numOfPeopleInput.resignFirstResponder()
        
        
        if let totalMoneyInput = totalMoneyInput,
        let tipsPercentage = tipsPercentage,
        let numOfPeople = numOfPeople{
            total = totalMoneyInput * (1 + tipsPercentage/100)
            tip = totalMoneyInput * tipsPercentage/100
            avg = total / numOfPeople
            
            warningLabel.isHidden = true
            
            if tip < 10{
                warningLabel.text = "客官～大方一點嘛"
                warningLabel.isHidden = false
            }else if tip > 20 {
                warningLabel.text = "客官真棒～謝謝客官！！！"
                warningLabel.isHidden = false
            }
            
            
            
        }else{
            total = 0.0
            tip = 0.0
            avg = 0.0
            warningLabel.text = "請輸入正確的數字喔！！！"
            warningLabel.isHidden = false
        }
        
        
        
        totalOutputLabel.text = String(format: "%.2f", total)
        tipOutputLabel.text = String(format: "%.2f",tip)
        avgOutputLabel.text = String(format: "%.2f",avg)
            
    }


}

