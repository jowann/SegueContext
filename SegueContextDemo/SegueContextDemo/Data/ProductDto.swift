//
//  ProductDto.swift
//  SegueContextDemo
//
//  Created by Johann on 30/01/2018.
//  Copyright © 2018 JoWann. All rights reserved.
//

import Foundation

// A Dto should be a simple object that maps properties of a streamed object / dataBase object

class ProductDto{
    let productName:String
    let productPrice:Float
    let date:Date
    
    init(productName:String, productPrice:Float, date:Date){
        self.productName = productName
        self.productPrice = productPrice
        self.date = date
    }
}
