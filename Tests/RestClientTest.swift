//
//  RestClientTest.swift
//  RingCentral
//
//  Created by Tyler Liu on 8/24/16.
//  Copyright © 2016 RingCentral. All rights reserved.
//

import XCTest
import RingCentral

class RestClientTest: BaseTest {

    func testInit() {
        XCTAssertTrue(rc.appKey == config.appKey)
        XCTAssertTrue(rc.appSecret == config.appSecret)
        XCTAssertTrue(rc.server == config.server)
    }

    func testAuthorize() {
        let expectation1 = expectation(description: "expectation1")
        rc.authorize(config.username!, ext: config.extension!, password: config.password!) { token, error in
            XCTAssertNil(error)
            XCTAssertNotNil(token)
            XCTAssertTrue(token!.access_token!.characters.count > 0)
            expectation1.fulfill()
        }

        let expectation2 = expectation(description: "expectation2")
        rc.authorize(config.username!, ext: "", password: "wrong password") { token, error in
            XCTAssertNotNil(error)
            XCTAssertNil(token)
            XCTAssertTrue(error?.statusCode == 400)
            expectation2.fulfill()
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

    func testRestApi() {
        let expectation1 = expectation(description: "expectation1")
        rc.getString("/restapi") { string, error in
            XCTAssertTrue(string!.characters.count > 0)
            expectation1.fulfill()
        }

        let expectation2 = expectation(description: "expectation2")
        rc.getString("/restapi/v1.0") { string, error in
            let restApi = VersionInfo(JSONString: string!)!
            XCTAssertTrue(restApi.uri == "https://platform.devtest.ringcentral.com/restapi/v1.0")
            expectation2.fulfill()
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

}
