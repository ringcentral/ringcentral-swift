import XCTest
@testable import RingCentral

final class RingCentralTests: XCTestCase {
    func testExample() {
        let exp = expectation(description: "http call")
        let options = RingCentralOptions(
            clientId: "33zQZlyQSPadH22cFIT0sw", 
            clientSecret: "TgihqTjaSg2_63CmrNq6tA8n2riQTCQwGl4VoD0mRYTA", 
            server: "https://platform.devtest.ringcentral.com"
        )
        let rc = RingCentral(options: options)
        rc.authorize(username: "15178795131", ext: "101", password: "Ring123!") {
            exp.fulfill()
        }
        waitForExpectations(timeout: 30, handler: nil)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
