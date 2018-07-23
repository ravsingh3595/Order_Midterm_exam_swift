//
//  Order.swift
//  C0735028_Exam1_MAD3004
//
//  Created by user on 2018-07-22.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

class Order: IDisplay
{
    var orderId: String?
    var orderDate: Date?
    //var product: [Any]?
    var orderTotal: Double = 0
    var productsInOrder = [Int: Product]()
    
    init(orderId: String, orderDate: Date )
    {
        self.orderId = orderId
        self.orderDate = orderDate
    }
    
    func productsInOrder(key: Int, productsInOrder: Product)
    {
        self.productsInOrder[key] = productsInOrder
    }
    func getOrderById(orderId: Order) {
        
        print("Orders List \n Order Id: \(self.orderId!) \n Order Date: \(self.orderDate!)")
        print("\t Product Details")
        for orderKey in productsInOrder.keys
        {
            print(productsInOrder[orderKey]!.display())
        }
    }
    func display()
    {
        print("Order Id: \(self.orderId!) \n Order Date: \(self.orderDate!)")

        print("\t Product Details")
        for orderKey in productsInOrder.keys
        {
            print(productsInOrder[orderKey]!.display())
            orderTotal = orderTotal + (Double(productsInOrder[orderKey]!.quantity!) * productsInOrder[orderKey]!.price!)
        }
        print("Total Amount of order: $\(orderTotal)")
    }
}











