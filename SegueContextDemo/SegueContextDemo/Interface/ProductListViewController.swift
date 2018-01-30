//
//  PriceListViewController.swift
//  SegueContextDemo
//
//  Created by Johann on 30/01/2018.
//  Copyright © 2018 JoWann. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = ProductListViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // call Service / retrieve Data / feed View Model
        let products = [ProductDto(productName:"couscous", productPrice: 22, date:Date()), ProductDto(productName:"cassoulet", productPrice: 18, date:Date()), ProductDto(productName:"omelette", productPrice: 16, date:Date())
                ]
        // when service data is received : feed the view model
        viewModel.set(products: products)
        // reload Interface
        reloadData()
    }
    
    func reloadData(){
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let product = viewModel[indexPath.row]
        // The cell identifier is named as its type
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCellTableViewCell") as! ProductCellTableViewCell
        cell.product = product
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productDto = viewModel[indexPath.row].productDto
        // we are going to ProductDetailViewController screen : let's create a context
        let segueContext = ProductDetailsViewController.SegueContext(productDto: productDto)
        // a segue identifier should be "show"+destinationViewController's name without "ViewController"
        // Why ?? ..
        // Why not ..
        performSegue(withIdentifier: "showProductDetails", sender: segueContext)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // the prepare method has only one line
        if prepare(for: segue, context: sender as? ISegueContext){
            return
        }
        // or more if it must deal with embed view controllers.
        // switch on segue context name but still use segue  context for link
    }
    

}
