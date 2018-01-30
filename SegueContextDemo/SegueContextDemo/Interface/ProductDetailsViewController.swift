//
//  ViewController.swift
//  SegueContextDemo
//
//  Created by Johann on 30/01/2018.
//  Copyright © 2018 JoWann. All rights reserved.
//

import UIKit

class ProductDetailsViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    private var productDetailsViewModel:ProductDetailsViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func reloadData(){
        dateLabel.text = productDetailsViewModel.date
        priceLabel.text = productDetailsViewModel.price
        nameLabel.text = productDetailsViewModel.name
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if prepare(for: segue, context: sender as? ISegueContext){
            return
        }
        // deal with embed view controllers only.
    }
    
    // I create Segue Context class in each view controller
    class SegueContext:ISegueContext{
        let productDetailsViewModel:ProductDetailsViewModel
        // We assume that the VC works for any SegueContext constructor.
        // each contructor creates a view model for the view controller
        init(productDto:ProductDto){
            productDetailsViewModel = ProductDetailsViewModel(productDto:productDto)
        }
        init(name:String, price:Float, date:Date){
            productDetailsViewModel = ProductDetailsViewModel(name:name, price:price, date:date)
        }
        func linkWith(_ viewController: UIViewController) {
            // always force unwrap the received controller: a crash often avoids unexpected behavior
            let viewController = viewController as! ProductDetailsViewController
            viewController.productDetailsViewModel = productDetailsViewModel
        }
    }
    
    

}

