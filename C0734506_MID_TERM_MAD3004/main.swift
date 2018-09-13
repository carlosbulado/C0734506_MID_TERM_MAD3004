//
//  main.swift
//  C0734506_MID_TERM_MAD3004
//
//  Created by MacStudent on 2018-09-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Mid Term Test!")

// Question #2
var p1: Product = Product(id: 1, pId: "P001", name: "SAMSUNG", pName: "Hard Drive", price: 120.0, quantity: 10.0)
var p2: Product = Product(id: 2, pId: "P002", name: "SAMSUNG", pName: "ZIP Drive", price: 90.0, quantity: 8.0)
var p3: Product = Product(id: 3, pId: "P003", name: "HP", pName: "Floppy Disk", price: 50.0, quantity: 4.0)
var p4: Product = Product(id: 4, pId: "P004", name: "APPLE", pName: "Monitor", price: 300.0, quantity: 3.0)
var p5: Product = Product(id: 5, pId: "P005", name: "APPLE", pName: "iPhone 7 Plus", price: 1200.0, quantity: 3.0)
// Question #3
let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd HH:mm"

var o1: Order = Order(id: 1, date: formatter.date(from: "2018/10/03 12:30")!)
var o2: Order = Order(id: 2, date: formatter.date(from: "2018/10/07 08:45")!)
var o3: Order = Order(id: 3, date: formatter.date(from: "2018/10/10 09:15")!)
// Question #4
o1.AddProduct(product: p1)
o1.AddProduct(product: p2)
o1.AddProduct(product: p3)

p1.Quantity = 12.0
p2.Quantity = 6.0
p3.Quantity = 2.0

o2.AddProduct(product: p1)
o2.AddProduct(product: p2)
o2.AddProduct(product: p3)
o2.AddProduct(product: p4)

p1.Quantity = 18.0
p2.Quantity = 9.0
p3.Quantity = 7.0
p4.Quantity = 4.0

o3.AddProduct(product: p1)
o3.AddProduct(product: p2)
o3.AddProduct(product: p3)
o3.AddProduct(product: p4)
o3.AddProduct(product: p5)
// Question #5
var dicOrder: Dictionary<Int, Order> = [o1.Id: o1, o2.Id: o2, o3.Id: o3]
// Question #6
Order.OrderDictionary = dicOrder
var o4 = Order.getOrderById(id: o1.Id)
var o5 = Order.getOrderById(id: o2.Id)
var o6 = Order.getOrderById(id: o3.Id)
// Question #7
var totalFromAllOrders: Double = 0.0
for (_, v) in Order.OrderDictionary
{
    print("--------------------------------------------------------------------------------")
    print(v.display())
    totalFromAllOrders += v.Total
}
print("--------------------------------------------------------------------------------")
print("Total From All Orders: \(totalFromAllOrders)")
