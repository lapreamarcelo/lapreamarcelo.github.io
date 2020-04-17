// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "MyBlog",
    products: [
        .executable(name: "MyBlog", targets: ["MyBlog"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.3.0")
    ],
    targets: [
        .target(
            name: "MyBlog",
            dependencies: ["Publish"]
        )
    ]
)