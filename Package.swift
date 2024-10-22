// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "IdentificationScenes",
    defaultLocalization: "ru",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "IdentificationScenes",
            targets: [
                "IdentificationScenes"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apache/cordova-ios.git", from: "7.1.0")
    ],
    targets: [
        .target(
            name: "IdentificationScenes",
            dependencies: [
                "FaceTecSDK",
                .product(name: "CordovaLib", package: "cordova-ios")
            ],
            path: "",
            publicHeadersPath: "."
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            path: "FaceTecSDK.xcframework"
        )
    ]
)
