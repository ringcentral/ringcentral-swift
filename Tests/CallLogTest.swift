//
//  CallLogTest.swift
//  RingCentral
//
//  Created by Tyler Liu on 11/3/16.
//
//

import XCTest
import RingCentral
import Alamofire

class CallLogTest: BaseTest {

    func testListAccount() {
        let parameters: Parameters = [
            "dateFrom": "2006-11-06T02:20:24.4596528Z",
            "showBlocked": false,
            "perPage": 1000
        ]
        let expectation1 = expectation(description: "expectation1")
        rc.restapi("v1.0").account("~").callLog().list(parameters: parameters) { list, error in
            XCTAssertNil(error)
            XCTAssertNotNil(list)
            XCTAssertTrue(1000 == list?.paging?.perPage)
            expectation1.fulfill()
        }

        waitForExpectations(timeout: 30) { error in
            XCTAssertNil(error)
        }
    }

    func testListExtension() {
        let listParameters = CallLogPath.ListParameters(
            showBlocked: true,
            dateFrom: "2006-11-06T02:20:24.4596528Z",
            perPage: 1000
        )
        let expectation2 = expectation(description: "expectation2")
        rc.restapi("v1.0").account("~").extension("~").callLog().list(parameters: listParameters) { list, error in
            XCTAssertNil(error)
            XCTAssertNotNil(list)
            XCTAssertTrue(1000 == list?.paging?.perPage)
            expectation2.fulfill()
        }

        waitForExpectations(timeout: 30) { error in
            XCTAssertNil(error)
        }
    }

}
