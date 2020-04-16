// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "trafficlights",
    dependencies: [
        .package(url: "https://github.com/uraimo/SwiftyGPIO.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "trafficlights",
            dependencies: [
                "SwiftyGPIO"
            ]
        )
    ]
)
