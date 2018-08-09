//
//  DictionaryTest.swift
//  RingCentral
//
//  Created by Tyler Liu on 8/27/16.
//  Copyright © 2016 RingCentral. All rights reserved.
//

import XCTest
import RingCentral

class DictionaryTest: BaseTest {

    func testCountry() {

        // test get string
        let expectation1 = expectation(description: "expectation1")
        rc.getString("/restapi/v1.0/dictionary/country/46") { string, error in
            XCTAssertNil(error)
            let country = GetCountryInfoDictionaryResponse(JSONString: string!)
            XCTAssertTrue("China" == country!.name)
            expectation1.fulfill()
        }

        // test get model
        let expectation2 = expectation(description: "expectation2")
        rc.get("/restapi/v1.0/dictionary/country/46") { (country: GetCountryInfoDictionaryResponse?, error) in
            XCTAssertNil(error)
            XCTAssertTrue("China" == country!.name)
            XCTAssertNotNil(country!.loginAllowed)
            XCTAssertTrue(false == country!.loginAllowed)
            expectation2.fulfill()
        }

        // test url builder
        XCTAssertTrue("/restapi/v1.0/dictionary/country/46" == rc.restapi("v1.0").dictionary().country("46").endpoint())
        XCTAssertTrue("/restapi/v1.0/dictionary/country" == rc.restapi("v1.0").dictionary().country().endpoint())
        XCTAssertTrue("/restapi/v1.0/dictionary/timezone" == rc.restapi("v1.0").dictionary().timezone().endpoint())
        XCTAssertTrue("/restapi/v1.0/dictionary/timezone/26" == rc.restapi("v1.0").dictionary().timezone("26").endpoint())

        // test final interface
        let expectation3 = expectation(description: "expectation3")
        rc.restapi("v1.0").dictionary().country("46").get() { country, error in
            XCTAssertNil(error)
            XCTAssertTrue("China" == country!.name)
            XCTAssertNotNil(country!.loginAllowed)
            XCTAssertTrue(false == country!.loginAllowed)
            expectation3.fulfill()
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

}
