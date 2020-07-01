// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "swiftPackage",
    products: [
        .library(
            name: "swiftLibrary",
            targets: ["swiftFramework"]),
        .library(
            name: "objcLibrary",
            targets: ["objcFramework"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "swiftFramework",
            url: "https://raw.githubusercontent.com/kirviz/swiftPackages/master/swiftPackage/Frameworks/swiftFramework.xcframework.zip",
            checksum: "777626480c62942e5b74d6df89088c26a487b7843baf5e28671614fb4720a849"
        ),
        .binaryTarget(
            name: "objcFramework",
            url: "https://raw.githubusercontent.com/kirviz/swiftPackages/master/swiftPackage/Frameworks/objcFramework.xcframework.zip",
            checksum: "928771c746c993c110b1ba6810c611161d46eabc8dfac05f565c1902927ae378"
        )
    ]
)
