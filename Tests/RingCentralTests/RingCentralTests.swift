import XCTest
@testable import RingCentral

final class RingCentralTests: XCTestCase {
    func testExample() {
        // XCTAssertEqual(RingCentral().text, "Hello, World!")
        let rc = RingCentral(options: RingCentralOptions(clientId: "", clientSecret: "", server: ""))
        rc.authorize(username: "username", extension: "extension", password: "password")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
