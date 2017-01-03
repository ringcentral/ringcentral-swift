import XCTest
import RingCentral

class BlockedNumberTest: BaseTest {

    func testBlockedNumber() {

        // test update
        let expectation1 = expectation(description: "expectation1")
        let `extension` = rc.restapi().account().extension()
        `extension`.blockedNumber().list() { resp, error in
            XCTAssertNil(error)
            let blockedNumber = resp!.records![0]
            let newBlockedNumber = BlockedNumberInfo()
            newBlockedNumber.name = "Hello World"
            `extension`.blockedNumber(blockedNumber.id!).put(parameters: newBlockedNumber) { number, error in
                XCTAssertNil(error)
                XCTAssertTrue("Hello World" == number!.name!)
                expectation1.fulfill()
            }
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }
    
}
