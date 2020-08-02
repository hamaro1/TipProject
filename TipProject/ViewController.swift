//
//  ViewController.swift
//  TipProject
//
//  Created by Helen Amaro on 7/28/20.
//  Copyright © 2020 Helen Amaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    @IBOutlet weak var tipText: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalText: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .blue
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
       
        //Get the bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = tip + bill
        
        //Update the tip and total labels
        
        tipLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    

}

