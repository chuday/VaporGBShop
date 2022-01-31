//
//  File.swift
//  
//
//  Created by Mikhail Chudaev on 28.01.2022.
//

import Vapor

struct ReviewResponse: Content {
    let userId: Int?
    let reviewText: String?
}
