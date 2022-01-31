//
//  File.swift
//  
//
//  Created by Mikhail Chudaev on 25.01.2022.
//

import Vapor

struct DefaultResponse: Content {
    var result: Int
    var successMessage: String?
    var errorMessage: String?
}

