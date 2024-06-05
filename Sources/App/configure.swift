import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
     app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
	
	app.views.use(.leaf)
	app.leaf.cache.isEnabled = false
	app.http.server.configuration.port = 8024

    // register routes
    try routes(app)
}
