//
//  Wage.swift
//  ShopingCalculator
//
//  Created by Monish Chopra on 07/08/20.
//  Copyright © 2020 Monish Chopra. All rights reserved.
//

import Foundation

//Mark:-Take the input and produces the output
class wage {
    class func  gethours(forwage wage: Double, andPrice price: Double) -> Int{
        
        return Int(ceil(price / wage))
        
    }
}
