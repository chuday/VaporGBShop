import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    // когда будем ссылаться на "register" то будем использовать controller
    let controller = AuthController()
        app.post("register", use: controller.register)

    try app.register(collection: TodoController())
}
