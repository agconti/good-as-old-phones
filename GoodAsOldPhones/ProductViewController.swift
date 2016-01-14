//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Andrew Conti on 1/14/16.
//  Copyright © 2016 agconit. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNameLabel.text = "1937 Desk Phone"
    }
}
