import XCTest
@testable import RingCentral

final class RingCentralTests: XCTestCase {
    func testExample() {
        let exp = expectation(description: "http call")
        let rc = RingCentral(options: RingCentralOptions(clientId: "", clientSecret: "", server: "https://platform.devtest.ringcentral.com"))
        rc.authorize(username: "username", extension: "extension", password: "password") {
            exp.fulfill()
        }
        waitForExpectations(timeout: 30, handler: nil)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
