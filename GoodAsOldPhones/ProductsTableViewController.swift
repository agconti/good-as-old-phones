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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tabelView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numVisibleCells
    }
    
    override func tableView(tabelView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(productCellIdentifier, forIndexPath: indexPath)
        return cell
    }
    
}
