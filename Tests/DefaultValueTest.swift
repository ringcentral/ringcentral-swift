import XCTest
import RingCentral


class DefaultValueTest: BaseTest {

    func testRestAPI() {
        let expectation1 = expectation(description: "expectation1")
        rc.restapi("v1.0").account("~").extension("~").get() { extensionInfo, error in
            XCTAssertNil(error)
            XCTAssertNotNil(extensionInfo?.name)
            expectation1.fulfill()
        }

        let expectation2 = expectation(description: "expectation2")
        rc.restapi().account("~").extension("~").get() { extensionInfo, error in
            XCTAssertNil(error)
            XCTAssertNotNil(extensionInfo?.name)
            expectation2.fulfill()
        }

        let expectation3 = expectation(description: "expectation3")
        rc.restapi().get() { versionInfo, error in
            XCTAssertNil(error)
            XCTAssertTrue("v1.0" == versionInfo?.uriString)
            expectation3.fulfill()
        }

        let expectation4 = expectation(description: "expectation4")
        rc.restapi().list() { serverInfo, error in
            XCTAssertNil(error)
            XCTAssertTrue(1 == serverInfo?.apiVersions?.count)
            XCTAssertTrue("v1.0" == serverInfo?.apiVersions?[0].uriString)
            expectation4.fulfill()
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }

    }

    func testEndpoint() {
        var endpoint = rc.restapi().endpoint()
        XCTAssertTrue("/restapi/v1.0" == endpoint)
        endpoint = rc.restapi().endpoint(withId: false)
        XCTAssertTrue("/restapi" == endpoint)
        endpoint = rc.restapi().account("~").endpoint()
        XCTAssertTrue("/restapi/v1.0/account/~" == endpoint)
        endpoint = rc.restapi().account("~").endpoint(withId: false)
        XCTAssertTrue("/restapi/v1.0/account" == endpoint)
        endpoint = rc.restapi().account("~").extension("~").endpoint()
        XCTAssertTrue("/restapi/v1.0/account/~/extension/~" == endpoint)
        endpoint = rc.restapi().account("~").extension("~").endpoint(withId: false)
        XCTAssertTrue("/restapi/v1.0/account/~/extension" == endpoint)
    }

    func testAccount() {
        var endpoint = rc.restapi().account().endpoint()
        XCTAssertTrue("/restapi/v1.0/account/~" == endpoint)
        endpoint = rc.restapi().account().endpoint(withId: false)
        XCTAssertTrue("/restapi/v1.0/account" == endpoint)
    }

    func testExtension() {
        var endpoint = rc.restapi().account().extension().endpoint()
        XCTAssertTrue("/restapi/v1.0/account/~/extension/~" == endpoint)
        endpoint = rc.restapi().account().extension().endpoint(withId: false)
        XCTAssertTrue("/restapi/v1.0/account/~/extension" == endpoint)
    }

}
