//
//  File.swift
//  
//
//  Created by Mikhail Chudaev on 28.01.2022.
//

import Vapor

struct Review: Content {
    var productId: Int?
    var userId: Int?
    var reviewText: String?
    var reviewId: Int?
}
