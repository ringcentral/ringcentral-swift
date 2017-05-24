import XCTest
import RingCentral


class ServiceInfoTest: BaseTest {

    func testAccountServiceInfo() {
        let expectation1 = expectation(description: "expectation1")

        rc.restapi("v1.0").account("~").serviceInfo().get() { serviceInfo, error in
            XCTAssertNil(error)
            let index = serviceInfo!.serviceFeatures!.index(where: { $0.featureName! == "FaxReceiving" })!
            let feature = serviceInfo!.serviceFeatures![index]
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
            XCTAssertNil(error)
            XCTAssertNotNil(serviceInfo)
            expectation1.fulfill()
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

}
