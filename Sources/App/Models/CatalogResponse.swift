//
//  File.swift
//  
//
//  Created by Mikhail Chudaev on 25.01.2022.
//

import Vapor

struct CatalogResponse: Content {
    let productId: Int?
    let productName: String?
    let price: Int?
    let shortDescription: String?
}
