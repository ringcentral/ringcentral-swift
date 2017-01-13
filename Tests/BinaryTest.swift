//
//  BinaryTest.swift
//  RingCentral
//
//  Created by Tyler Liu on 11/3/16.
//
//

import XCTest
import RingCentral
import Alamofire

class BinaryTest: BaseTest {

    func testDownload() {
        let expectation1 = expectation(description: "expectation1")

        let ext = rc.restapi("v1.0").account("~").extension("~")
        ext.profileImage().get() { image, error in
            XCTAssertNil(error)
            XCTAssertNotNil(image?.data)
            expectation1.fulfill()
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

    func testUpload() {
        let expectation1 = expectation(description: "expectation1")
        let expectation2 = expectation(description: "expectation2")

        Alamofire.download("https://www.baidu.com/img/bd_logo1.png").responseData { response in
            if let imageData = response.result.value {
                rc.restapi("v1.0").account("~").extension("~").profileImage().put(imageData: imageData, imageFileName: "test.png") { error in
                    XCTAssertNil(error)
                    expectation1.fulfill()
                }
                rc.restapi("v1.0").account("~").extension("~").profileImage().post(imageData: imageData, imageFileName: "test.png") { error in
                    XCTAssertNil(error)
                    expectation2.fulfill()
                }
            }
        }

        waitForExpectations(timeout: 20) { error in
            XCTAssertNil(error)
        }
    }

}
