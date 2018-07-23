//
//  main.swift
//  C0735028_Exam1_MAD3004
//
//  Created by user on 2018-07-22.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

let line = String(repeating: "*", count: 30)

var p1 = Product(manufacturerId: "m1", manufacturerName: "Apple", productId: "p1", productName: "MacBook", price: 1500, quantity: 1)

var p2 = Product(manufacturerId: "m2", manufacturerName: "Samsung", productId: "p2", productName: "Galaxy", price: 800, quantity: 2)

var p3 = Product(manufacturerId: "m1", manufacturerName: "Apple", productId: "p3", productName: "iPhone", price: 900, quantity: 3)

var p4 = Product(manufacturerId: "m3", manufacturerName: "Google", productId: "p4", productName: "Chrome Book", price: 1200, quantity: 1)

var p5 = Product(manufacturerId: "m2", manufacturerName: "Samsung", productId: "p5", productName: "Tab", price: 500, quantity: 5)

var date1 = Util.getDate(year: 2017, month: 2, day: 25)
var date2 = Util.getDate(year: 2018, month: 3, day: 15)
var date3 = Util.getDate(year: 2018, month: 6, day: 10)

//order total need to be fixed
var o1 = Order(orderId: "O1", orderDate: date1)
o1.productsInOrder(key: 1, productsInOrder: p1)
o1.productsInOrder(key: 2, productsInOrder: p3)

var o2 = Order(orderId: "O2", orderDate: date2)
o2.productsInOrder(key: 1, productsInOrder: p2)
o2.productsInOrder(key: 2, productsInOrder: p5)

var o3 = Order(orderId: "O3", orderDate: date3)
o3.productsInOrder(key: 1, productsInOrder: p1)
o3.productsInOrder(key: 2, productsInOrder: p2)
o3.productsInOrder(key: 3, productsInOrder: p5)

var ordersInDic = [String: Order]()

ordersInDic["O1"] = o1
ordersInDic["O2"] = o2
ordersInDic["O3"] = o3
print(line)
p1.display();print(line)
p2.display();print(line)
p3.display();print(line)
p4.display();print(line)
p5.display();print(line)

print(line)
print("Orders List \n ")
for orders in ordersInDic.values
{
    orders.display()
    print(line)
}
print(line)
print("Getting Order by Id, In this case Order is O3 ")
o3.getOrderById(orderId: o3)
