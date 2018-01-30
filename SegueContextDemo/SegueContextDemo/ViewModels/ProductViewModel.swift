//
//  ProductViewModel.swift
//  SegueContextDemo
//
//  Created by Johann on 30/01/2018.
//  Copyright © 2018 JoWann. All rights reserved.
//

import Foundation

// the view model has only formatted data
// often contains business rules
class ProductViewModel{
    
    let productDto:ProductDto
    
    init(product:ProductDto){
        self.productDto = product
    }
    
    var name:String{
        return productDto.productName
    }
    
    var price:String{
        return String(format:"€%.2f", productDto.productPrice)
    }
}
