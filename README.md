# Binary Swift Package!

## Install
- File -> Swift Packages -> Add Package Dependency...
- Enter the URL: https://github.com/kirviz/swiftPackages
- Change to "branch master"

## Try
```
#import swiftFramework
let framy = FramyS(name: "Hell😈 world")
print("\(framy.name)")
```

You can see I played arround with names in Package.swift to figure out which name has what effect, so we now have swiftPackage, swiftLibrary and swiftFramework to make it confusing 😇

## Projects
- swiftFramework is the actual framework that we build binaries from
- swiftPackage is the package that distributes that framework through path
- scripts/build_xcframework.sh builds the binary framework and copies it over to swiftPackage
- swiftClient imports swiftPackage directly in order to get the framework locally
- anotherSwiftCient uses the real deal package through URL 
- (root) the real deal package, i.e. distributes the framework through URL
