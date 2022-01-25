//
//  File.swift
//  
//
//  Created by Mikhail Chudaev on 25.01.2022.
//

import Vapor

class ItemsController {
    func getCatalog(_ req: Request) throws -> EventLoopFuture<[CatalogResponse]> {
        guard let body = try? req.content.decode(Catalog.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = [
            CatalogResponse(productId: 124, productName: "Эппл-мыш", price: 7900, shortDescription: "Мыш Мэджик Маус Эппл."),
            CatalogResponse(productId: 125, productName: "Эйрпод про", price: 24990, shortDescription: "Наушники эппл."),
            CatalogResponse(productId: 126, productName: "Часы эппл", price: 36690, shortDescription: "Эппл воч.")
        ]
        
        return req.eventLoop.future(response)
    }
    
    func getGood(_ req: Request) throws -> EventLoopFuture<GoodResponse> {
        guard let body = try? req.content.decode(Good.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        var response = GoodResponse(result: 1, productId: 999, productName: "Неизвестный товар.", price: 0, description: "Неизвестный товар.")
        
        switch body.productId {
            
        case 124: response = GoodResponse(result: 1, productId: 124, productName: "Магическая эппл-мыш", price: 7900, description: "Беспроводная мышь Magic Mouse.")
        case 125: response = GoodResponse(result: 1, productId: 125, productName: "Наушники эйрподы про", price: 24990, description: "Хорошие наушники.")
        case 126: response = GoodResponse(result: 1, productId: 126, productName: "Часы эппл воч", price: 36690, description: "Хорошие часы.")
        default: response = GoodResponse(result: 1, productId: 999, productName: "Неизвестный товар.", price: 0, description: "Неизвестный товар.")
        }
        
        return req.eventLoop.future(response)
    }
}

