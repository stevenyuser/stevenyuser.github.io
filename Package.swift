// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "StevenyuserGithubIo",
    products: [
        .executable(
            name: "StevenyuserGithubIo",
            targets: ["StevenyuserGithubIo"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.7.0")
    ],
    targets: [
        .target(
            name: "StevenyuserGithubIo",
            dependencies: ["Publish"]
        )
    ]
)