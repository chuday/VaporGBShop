//
//  File.swift
//  
//
//  Created by Mikhail Chudaev on 24.01.2022.
//

import Vapor

// ответ который мы получим будет иметь такой формат
struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
