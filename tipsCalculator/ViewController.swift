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
    
    
    // output Label
    @IBOutlet weak var totalMoneyOutput: UILabel!
    @IBOutlet weak var tipsOutput: UILabel!
    @IBOutlet weak var avgOutput: UILabel!
    
    var money: Double
    var tipsPercentage: Double
    var numOfPeople: Int
    
    var total: Double
    var tips: Double
    var avg: Double
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


}

