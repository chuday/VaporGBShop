import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    let controller = AuthController()
        app.post("register", use: controller.register)

    try app.register(collection: TodoController())
    
    
    let userController = UserController()
    let itemsController = ItemsController()
    let cartController = CartController()
    
    app.post("auth", use: userController.auth)
    app.post("logout", use: userController.logout)
    app.post("signup", use: userController.signup)
    app.post("getcatalog", use: itemsController.getCatalog)
    app.post("getgood", use: itemsController.getGood)
    app.post("getcart", use: cartController.getCart)
    app.post("paycart", use: cartController.payCart)
}
