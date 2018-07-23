//
//  Product.swift
//  C0735028_Exam1_MAD3004
//
//  Created by user on 2018-07-22.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

class Product: Manufacturer, IDisplay
{
    var productId: String?
    var productName: String?
    var price: Double?
    var quantity: Int?
    
    init(manufacturerId: String, manufacturerName: String, productId: String, productName: String, price: Double, quantity: Int)
    {
        super.init(manufacturerId: manufacturerId, manufacturerName: manufacturerName)
        self.productId = productId
        self.productName = productName
        self.price =  price
        self.quantity = quantity
    }
    
    func display() {
        
        print("""
                    Manufacturer Name: \(self.manufacturerName!)
                    Product Id: \(self.productId!)
                    Product Name: \(self.productName!)
                    Price: $\(self.price!)
                    Quantity: \(self.quantity!)
            """)
    }
}
