# Http.swift

A tiny HTTP server engine written in swift.

## Features
* Error handling
* Global middlewares
* Route middlewares
* Route grouping
* File serving
* Directory browsing
* Request parameters
* Works in Linux, iOS, macOS and tvOS

```swift
let server = Server()
server.get("/hello/{id}") { request in
    print(request.queryParams["state"])
    return .ok(request.routeParams["id"]!) 
}

server.run() //go to http://localhost:8080/hello/1?state=active in the browser
```

## Installation

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but Http.swift does support its use on supported platforms. 

Once you have your Swift package set up, adding Http.swift as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
import PackageDescription

let package = Package(
    name: "MyServer",
    dependencies: [
        .Package(url: "https://github.com/BiAtoms/Http.swift.git", majorVersion: 2)
    ]
)
```

## Authors

* **Orkhan Alikhanov** - *Initial work* - [OrkhanAlikhanov](https://github.com/OrkhanAlikhanov)

See also the list of [contributors](https://github.com/BiAtoms/Http.swift/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
