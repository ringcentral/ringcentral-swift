import XCTest
import RingCentral


class TokenTest: BaseTest {

    func testTokenWritable() {
        let token = rc.token
        XCTAssertNotNil(token?.access_token)
        let accessToken = token?.access_token
        rc.token = token // rc.token is writable
        XCTAssertTrue(rc.token?.access_token == accessToken)
    }


    func testTokenRestore() {
        let accessToken = rc.token!.access_token!

        // suppose jsonString was loaded from file/DB
        let jsonString = rc.token!.toJSONString(prettyPrint: false)!

        // suppose we haven't login
        rc.token = nil

        // deserialize
        let token = TokenInfo(JSONString: jsonString)
        rc.token = token

        let expectation1 = expectation(description: "expectation1")
        rc.refresh() { token, error in
            XCTAssertNil(error)
            XCTAssertNotNil(token)
            XCTAssertNotNil(token?.access_token)
            XCTAssertTrue(accessToken != token?.access_token)
            expectation1.fulfill()
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

}
