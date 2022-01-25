//
//  File.swift
//  
//
//  Created by Mikhail Chudaev on 25.01.2022.
//

import Vapor

struct Catalog: Content {
    var pageNumber: Int?
    var categoryId: Int?
}
