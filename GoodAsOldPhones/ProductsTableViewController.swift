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
    
    var productNames: [String]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNames = [ "1927 Bell Phone"
                       , "1950 Office Phone"
                       , "1980 Car Phone"
                       , "1940 Military Phone"
                       ]
    }
    
    override func tableView(tabelView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let pNames = productNames {
            return pNames.count
        }
        
        return 0
    }
    
    override func tableView(tabelView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(productCellIdentifier, forIndexPath: indexPath)
        let productName = productNames?[indexPath.row]
        
        cell.textLabel?.text = productName
        cell.imageView?.image = UIImage(named: "image-cell1")
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct" {
            guard let vc = segue.destinationViewController as? ProductViewController,
                  let cell = sender as? UITableViewCell else {
                return
            }
            
            vc.productName = cell.textLabel?.text
            
        }
    }
}
