// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "RiverboatMedia",
    products: [
        .executable(name: "RiverboatMedia", targets: ["RiverboatMedia"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.5.0"),
        .package(url: "https://github.com/johnsundell/splashpublishplugin", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "RiverboatMedia",
            dependencies: ["Publish", "SplashPublishPlugin"]
        )
    ]
)
