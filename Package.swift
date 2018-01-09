// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "HttpSwift",
    products: [
        .library(name: "HttpSwift",
                 targets: ["HttpSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tachyonics/Socket.swift.git", .upToNextMajor(from: "2.1.0")),
        .package(url: "https://github.com/tachyonics/Request.swift.git", .upToNextMajor(from: "2.0.0")) //for tests
    ],
    targets: [
        .target(name: "HttpSwift", 
                dependencies: ["SocketSwift", "RequestSwift"]),
    ]
)
