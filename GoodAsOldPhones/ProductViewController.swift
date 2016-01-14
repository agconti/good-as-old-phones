//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Andrew Conti on 1/14/16.
//  Copyright © 2016 agconit. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    var product: Product?
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNameLabel.text = product?.name
        
        if let image = product?.productImage {
            productImageView.image = UIImage(named: image)
        }
    }
    
    @IBAction func addToCartPressed(sender: AnyObject) {
        print("Button Tapped")
    }
   
}
