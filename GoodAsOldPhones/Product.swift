//
//  Product.swift
//  GoodAsOldPhones
//
//  Created by Andrew Conti on 1/14/16.
//  Copyright © 2016 agconit. All rights reserved.
//

import Foundation

class Product {
    
    var name: String
    var productImage: String
    var cellImage: String

    init( name: String
        , productImage: String
        , cellImage: String){
    
            self.name = name
            self.productImage = productImage
            self.cellImage = cellImage
    }
    
}