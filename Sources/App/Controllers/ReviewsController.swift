//
//  File.swift
//  
//
//  Created by Mikhail Chudaev on 28.01.2022.
//

import Vapor

class ReviewsController {
    func getReviews(_ req: Request) throws -> EventLoopFuture<[ReviewResponse]> {
        guard let body = try? req.content.decode(Good.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = [
            ReviewResponse(userId: 123, reviewText: "Потрясающий девайс."),
            ReviewResponse(userId: 345, reviewText: "Девайс не понравился."),
        ]
        
        return req.eventLoop.future(response)
    }
    
    func addReview(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Review.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Ваш отзыв был передан на модерацию.",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func removeReview(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Review.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: nil,
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
}
