//
//  UrlBuilderTest.swift
//  RingCentral
//
//  Created by Tyler Liu on 9/27/16.
//  Copyright © 2016 RingCentral. All rights reserved.
//

import XCTest
import RingCentral

class UrlBuilderTest: BaseTest {

    func testRestapi() {
        let endpoint = rc.restapi("v1.0").endpoint()
        XCTAssertTrue(endpoint == "/restapi/v1.0")
        let endpoint2 = rc.restapi("v1.0").endpoint()
        XCTAssertTrue(endpoint2 == endpoint)
    }

}
