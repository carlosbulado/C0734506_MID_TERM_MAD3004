//
//  Manufacturer.swift
//  C0734506_MID_TERM_MAD3004
//
//  Created by MacStudent on 2018-09-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Manufacturer: IDisplay
{
    private var _id: Int?
    private var _name: String?
    
    init(id: Int, name: String)
    {
        self._id = id
        self._name = name
    }
    
    var Id: Int
    {
        get { return self._id! }
        set { self._id = newValue }
    }
    var Name: String
    {
        get { return self._name! }
        set { self._name = newValue }
    }
    
    func display() -> String {
        return "Id: \(self.Id) \t ManufacturerName: \(self.Name) \t\t"
    }
}

