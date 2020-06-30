import XCTest

import swiftPackageTests

var tests = [XCTestCaseEntry]()
tests += swiftPackageTests.allTests()
XCTMain(tests)
