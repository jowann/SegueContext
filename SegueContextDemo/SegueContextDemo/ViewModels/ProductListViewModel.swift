//
//  ProductListViewModel.swift
//  SegueContextDemo
//
//  Created by Johann on 30/01/2018.
//  Copyright © 2018 JoWann. All rights reserved.
//

import Foundation

class ProductListViewModel{
    
    private var products:[ProductDto]?
    
    init() {}
    
    var count: Int{
        return products?.count ?? 0
    }
    
    func set(products:[ProductDto]){
        self.products = products
    }
    // this view model can provide sub View Models for cells.
    subscript(index:Int) -> ProductViewModel{
        return ProductViewModel(product: products![index])
    }
}
