// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "swiftPackage",
    products: [
        .library(
            name: "swiftLibrary",
            targets: ["swiftFramework"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "swiftFramework",
            url: "https://raw.githubusercontent.com/kirviz/swiftPackages/master/swiftPackage/Frameworks/swiftFramework.xcframework.zip",
            //https://github.com/kirviz/swiftPackages/raw/master/swiftPackage/Frameworks/swiftFramework.xcframework.zip
            checksum: "777626480c62942e5b74d6df89088c26a487b7843baf5e28671614fb4720a849"
        )
    ]
)
