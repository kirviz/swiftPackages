// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swiftPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "swiftLibrary",
            targets: ["swiftFramework"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "swiftFramework",
            path: "Frameworks/swiftFramework.xcframework"
        ),
        .binaryTarget(
            name: "binarySwiftFramework",
            url: "https://raw.githubusercontent.com/kirviz/swiftPackages/master/swiftPackage/Frameworks/swiftFramework.xcframework.zip",
            checksum: "777626480c62942e5b74d6df89088c26a487b7843baf5e28671614fb4720a849"
        ),
        .testTarget(
            name: "swiftPackageTests",
            dependencies: ["swiftFramework"]),
    ]
)
