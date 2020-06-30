#!/bin/bash

cd ../swiftFramework

# build for simulator
xcodebuild archive -scheme "swiftFramework" -destination "platform=iOS Simulator,name=iPhone SE (2nd generation),OS=14.0"   -destination-timeout 1 SKIP_INSTALL=NO -archivePath output/simulator

# build for device
xcodebuild archive -scheme "swiftFramework" -destination "generic/platform=iOS" SKIP_INSTALL=NO -archivePath output/iphone

# assemble into xcframework
xcodebuild -create-xcframework -framework output/iphone.xcarchive/Products/Library/Frameworks/swiftFramework.framework -framework output/simulator.xcarchive/Products/Library/Frameworks/swiftFramework.framework -output output/swiftFramework.xcframework

cp -R output/swiftFramework.xcframework ../swiftPackage/Frameworks/swiftFramework.xcframework
