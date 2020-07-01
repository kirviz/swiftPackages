#!/bin/bash

cd ../objcFramework

# build for simulator
xcodebuild archive -scheme "objcFramework" -destination "platform=iOS Simulator,name=iPhone SE (2nd generation),OS=14.0"   -destination-timeout 1 SKIP_INSTALL=NO -archivePath output/simulator

# build for device
xcodebuild archive -scheme "objcFramework" -destination "generic/platform=iOS" SKIP_INSTALL=NO -archivePath output/iphone

# assemble into xcframework
xcodebuild -create-xcframework -framework output/iphone.xcarchive/Products/Library/Frameworks/objcFramework.framework -framework output/simulator.xcarchive/Products/Library/Frameworks/objcFramework.framework -output output/objcFramework.xcframework

# copy it over to swiftPackage project
rm -rf ../swiftPackage/Frameworks/objcFramework.xcframework
cp -R output/objcFramework.xcframework ../swiftPackage/Frameworks/objcFramework.xcframework

# zip and print checksum
cd ../swiftPackage/Frameworks
zip -vr objcFramework.xcframework.zip objcFramework.xcframework
swift package compute-checksum objcFramework.xcframework.zip