//
//  RingCentralTests.swift
//  RingCentralTests
//
//  Created by Tyler Liu on 8/24/16.
//  Copyright © 2016 RingCentral. All rights reserved.
//

import XCTest
import RingCentral

let config = Config.getInstance()
let rc = RestClient(appKey: config.appKey!, appSecret: config.appSecret!, production: config.production!)

class BaseTest: XCTestCase {

    override class func setUp() {
        super.setUp()
        let temp = BaseTest()
        let expectation1 = temp.expectation(description: "expectation1")
        rc.authorize(config.username!, ext: config.extension!, password: config.password!) { token, error in
            XCTAssertNil(error)
            expectation1.fulfill()
        }
        temp.waitForExpectations(timeout: 30) { error in
            XCTAssertNil(error)
        }
    }

    override class func tearDown() {
        let temp = BaseTest()
        let expectation1 = temp.expectation(description: "expectation1")
        rc.revoke() { result in
            XCTAssertTrue(result)
            sleep(10)
            expectation1.fulfill()
        }
        temp.waitForExpectations(timeout: 30) { error in
            XCTAssertNil(error)
        }
        super.tearDown()
    }

}
