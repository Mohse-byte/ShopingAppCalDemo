//
//  CurrencyTxtField.swift
//  ShopingCalculator
//
//  Created by Monish Chopra on 06/08/20.
//  Copyright © 2020 Monish Chopra. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    
    override func draw(_ rect: CGRect) {
        
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
            currencyLbl.backgroundColor = #colorLiteral(red: 0.9191959028, green: 0.9191959028, blue: 0.9191959028, alpha: 0.7967947346)
            currencyLbl.textAlignment = .center
            currencyLbl.textColor =  #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            currencyLbl.layer.cornerRadius = 5.0
            currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.locale = .current
            currencyLbl.text = formatter.currencySymbol
            addSubview(currencyLbl)
    }
    
    
    override func prepareForInterfaceBuilder() {
        
        customizeView()
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizeView()
        
        
    }
    
    //Mark:- Creating Custome Textfield Changing Color etc
    func customizeView()  {
        
               backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2519798801)
               layer.cornerRadius = 5.0
               textAlignment = .center
               clipsToBounds = true
        
        if let p = placeholder {
           let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
                attributedPlaceholder = place
                textColor = UIColor.white
                            
        }
        
        
        
    }

}
