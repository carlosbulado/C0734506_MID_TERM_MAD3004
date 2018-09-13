//
//  Product.swift
//  C0734506_MID_TERM_MAD3004
//
//  Created by MacStudent on 2018-09-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Product: Manufacturer
{
    private var _productId: String?
    private var _productName: String?
    private var _price: Double?
    private var _quantity: Double?
    
    init(id: Int, pId: String, name: String, pName: String, price: Double, quantity: Double)
    {
        super.init(id: id, name: name)
        self._productId = pId
        self._productName = pName
        self._price = price
        self._quantity = quantity
    }
    
    var ProductId: String
    {
        get { return self._productId! }
        set { self._productId = newValue }
    }
    var ProductName: String
        {
        get { return self._productName! }
        set { self._productName = newValue }
    }
    var Price: Double
    {
        get { return self._price! }
        set { self._price = newValue }
    }
    var Quantity: Double
    {
        get { return self._quantity! }
        set { self._quantity = newValue }
    }
    override func display() -> String {
        return super.display() + " ProductId: \(self.ProductId) \t\t  ProductName: \(self.ProductName) \t\t Price: $\(self.Price) \t\t Quantity: \(self.Quantity) \t\t Total: $\(self.Price * self.Quantity)"
    }
}

