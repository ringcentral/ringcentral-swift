import XCTest
import RingCentral
import Dollar


class ServiceInfoTest: BaseTest {

    func testAccountServiceInfo() {
        let expectation1 = expectation(description: "expectation1")

        rc.restapi("v1.0").account("~").serviceInfo().get() { serviceInfo, error in
            XCTAssertNil(error)
            let feature = $.find(serviceInfo!.serviceFeatures!) { $0.featureName! == "FaxReceiving" }!
            XCTAssertTrue(true == feature.enabled!)
            XCTAssertNotNil(serviceInfo?.limits)
            expectation1.fulfill()
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

    func testMeetingServiceInfo() {
        let expectation1 = expectation(description: "expectation1")

        rc.restapi("v1.0").account("~").extension("~").meetingServiceInfo().get() { serviceInfo, error in
            // todo: update code below after getting permission
            XCTAssertNotNil(error)
            XCTAssertTrue(403 == error!.statusCode)
            expectation1.fulfill()
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

}
