//
//  ProductDetailsViewModel.swift
//  SegueContextDemo
//
//  Created by Johann on 30/01/2018.
//  Copyright © 2018 JoWann. All rights reserved.
//

import Foundation

class ProductDetailsViewModel{
    
    let date:String
    let name:String
    let price:String
    
    
    init(productDto:ProductDto){
        name = productDto.productName
        price = String(format:"€%.2f", productDto.productPrice)
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        date = formatter.string(from: productDto.date)
    }
    
    init (name:String, price:Float, date:Date){
        self.name = name
        self.price = String(format:"€%.2f", price)
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        self.date = formatter.string(from: date)
    }
}
