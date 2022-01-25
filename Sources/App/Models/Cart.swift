//
//  File.swift
//  
//
//  Created by Mikhail Chudaev on 25.01.2022.
//

import Vapor

struct Cart: Content {
    var productId: Int?
    var quantity: Int?
}

