import XCTest
import swiftFramework

final class swiftPackageTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FramyS(name:"testName").name, "testName")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
