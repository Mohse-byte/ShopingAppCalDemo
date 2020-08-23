//
//  ViewController.swift
//  ShopingCalculator
//
//  Created by Monish Chopra on 06/08/20.
//  Copyright © 2020 Monish Chopra. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
  

    @IBOutlet weak var PriceTxt: CurrencyTxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //Mark:- Creating Calculate Button under keyboard
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
            calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.6314208365, blue: 0.2182858239, alpha: 1)
            calcBtn.setTitle("Calculate", for: .normal)
            calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
            calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)

            wageTxt.inputAccessoryView = calcBtn
            PriceTxt.inputAccessoryView = calcBtn
        
            resultLbl.isHidden = true
            hoursLbl.isHidden = true
    }

    
    @objc func calculate()  {
       
        if let wageTxt = wageTxt.text, let priceTxt = PriceTxt.text {
            
            if let Wage = Double(wageTxt), let price = Double(priceTxt) {
                
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(wage.gethours(forwage: Wage, andPrice: price))"
            }
            
        }

    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        PriceTxt.text = ""
        
        
    }
}

