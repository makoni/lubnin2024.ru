import Vapor

func routes(_ app: Application) throws {
	let defaultTitle = "Выставка Гаврилы Лубнина из частных коллекций"

	app.get { req async throws -> View in
		return try await req.view.render(
			"content",
			["title": defaultTitle]
		)
	}

//	app.get("presale") { req async throws -> View in
//		return try await req.view.render("buy")
//	}

//	app.get("buy") { req async throws -> View in
//		return try await req.view.render("buy")
//	}

	app.get("testpayment") { req async throws -> View in
		return try await req.view.render(
			"testpayment",
			["title": defaultTitle]
		)
	}

	app.get("success") { req async throws -> View in
		return try await req.view.render(
			"success",
			["title": defaultTitle]
		)
	}

	app.get("terms") { req async throws -> View in
		return try await req.view.render(
			"terms",
			["title": defaultTitle]
		)
	}

	app.get("help") { req async throws -> View in
		return try await req.view.render(
			"help",
			["title": defaultTitle]
		)
	}
}
