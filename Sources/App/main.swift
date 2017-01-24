import Vapor

let drop = Droplet()

drop.get("hello") { request in
    return "Hi, nigga!"
}

drop.get("ads") { request in
    return try JSON(node: [
            "number": 1
    ])
}

drop.resource("posts", PostController())

drop.run()
