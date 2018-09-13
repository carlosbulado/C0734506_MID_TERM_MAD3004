//
//  Order.swift
//  C0734506_MID_TERM_MAD3004
//
//  Created by MacStudent on 2018-09-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Order: IDisplay
{
    private var _id: Int?
    private var _date: Date?
    private var _products: [Product]?
    var Total: Double
    {
        var retn: Double = 0
        for p in self.Products
        {
            retn = retn + (p.Price * p.Quantity)
        }
        return retn
    }
    static var OrderDictionary: Dictionary<Int, Order> = Dictionary<Int, Order>()
    
    init(id: Int, date: Date)
    {
        self._id = id
        self._date = date
        self.Products = [Product]()
    }
    
    var Id: Int
    {
        get { return self._id! }
        set { self._id = newValue }
    }
    var Date: Date
    {
        get { return self._date! }
        set { self._date = newValue }
    }
    var Products: [Product]
    {
        get { return self._products! }
        set { self._products = newValue }
    }
    
    func AddProduct(product: Product)
    {
        self.Products.append(product)
    }
    
    static func getOrderById(id: Int) -> Order
    {
        return Order.OrderDictionary[id]!
    }
    
    func display() -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "MM/dd/yyyy HH:mm"
        var retn = "Order #\(self.Id):\n" +
        "Date: \(inputFormatter.string(from: self.Date)) \n" +
        "Products: \n"
        for p in self.Products
        {
            retn += "\t" + p.display() + "\n"
        }
        retn += "Total: $\(self.Total)"
        return retn
    }
}

