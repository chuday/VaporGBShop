//
//  File.swift
//  
//
//  Created by Mikhail Chudaev on 24.01.2022.
//

import Vapor

// то что нам нужно отдать
struct RegisterRequest: Content {
    var id_user: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
