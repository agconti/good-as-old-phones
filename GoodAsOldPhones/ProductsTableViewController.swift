//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Andrew Conti on 1/14/16.
//  Copyright © 2016 agconit. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    let productCellIdentifier: String = "ProductCell"
    let numVisibleCells: Int = 5
    
    var products: [Product]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        products = [ Product(name: "1927 Hand Dial Phone", productImage:  "phone-fullscreen1", cellImage: "image-cell1")
                   , Product(name: "1950 Office Phone", productImage:  "phone-fullscreen2", cellImage: "image-cell2")
                   , Product(name: "1980 Car Phone", productImage:  "phone-fullscreen3", cellImage: "image-cell3")
                   , Product(name: "1940 Military Phone", productImage:  "phone-fullscreen4", cellImage: "image-cell4")
                   ]
    }
    
    override func tableView(tabelView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let products = products {
            return products.count
        }
        
        return 0
    }
    
    override func tableView(tabelView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(productCellIdentifier, forIndexPath: indexPath)
        let product = products?[indexPath.row]
        
        cell.textLabel?.text = product?.name
        
        if let cellImage = product?.cellImage{
            cell.imageView?.image = UIImage(named: cellImage)
        }
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct" {
            guard let vc = segue.destinationViewController as? ProductViewController,
                  let cell = sender as? UITableViewCell,
                  let indexPath = tableView.indexPathForCell(cell) else {
                return
            }
            
            
            vc.product = products?[indexPath.row]
            
        }
    }
}
