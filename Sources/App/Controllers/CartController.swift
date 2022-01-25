//
//  File.swift
//  
//
//  Created by Mikhail Chudaev on 25.01.2022.
//

import Vapor

class CartController {
    func getCart(_ req: Request) throws -> EventLoopFuture<CartResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = CartResponse(
            amount: 46600,
            count: 2,
            contents: [
                CartContents(productId: 123, productName: "Эппл мыш.", productPrice: 45600, quantity: 1),
                CartContents(productId: 345, productName: "Эппл тряпочка.", productPrice: 1000, quantity: 1)
            ]
        )
        
        return req.eventLoop.future(response)
    }
    
    func payCart(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Товар оплачен.",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
}

