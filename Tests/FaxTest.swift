import XCTest
import RingCentral
import Alamofire


class FaxTest: BaseTest {

    func testSendingFax() {
        let expectation1 = expectation(description: "expectation1")
//        let expectation2 = expectation(description: "expectation2")

        let parameters: Parameters = ["to": [["phoneNumber": Config.getInstance().receiver!]]]
//        let postParameters = FaxPath.PostParameters(to: [CallerInfo(phoneNumber: Config.getInstance().receiver!)])
        var attachments: [Attachment] = []
        Alamofire.download("https://cdn.jsdelivr.net/npm/ringcentral@3.2.0/LICENSE.md").responseData { response in
            if let textData = response.result.value {
                attachments.append(Attachment(fileName: "README.txt", contentType: "text/plain", data: textData))
                rc.restapi().account().extension().fax().post(parameters: parameters, attachments: attachments) { messageInfo, error in
                    XCTAssertNil(error)
                    expectation1.fulfill()
                }
//                rc.restapi().account().extension().fax().post(parameters: postParameters, attachments: attachments) { messageInfo, error in
//                    XCTAssertNil(error)
//                    expectation2.fulfill()
//                }
            }
        }

        waitForExpectations(timeout: 20) { error in
            XCTAssertNil(error)
        }
    }

    func testSendingMms() {
        let expectation1 = expectation(description: "expectation1")
        let expectation2 = expectation(description: "expectation2")

        let parameters: Parameters = ["from": ["phoneNumber": Config.getInstance().username!], "to": [["phoneNumber": Config.getInstance().receiver!]]]
        let postParameters = CreateSMSMessage(from: MessageStoreCallerInfoRequest(phoneNumber: Config.getInstance().username!), to: [MessageStoreCallerInfoRequest(phoneNumber: Config.getInstance().receiver!)])
        var attachments: [Attachment] = []
        Alamofire.download("https://developer.ringcentral.com/assets/images/ico_case_business.png").responseData { response in
            if let textData = response.result.value {
                attachments.append(Attachment(fileName: "test.png", contentType: "image/png", data: textData))
                rc.restapi().account().extension().mms().post(parameters: parameters, attachments: attachments) { messageInfo, error in
                    XCTAssertNil(error)
                    expectation1.fulfill()
                }
                rc.restapi().account().extension().mms().post(parameters: postParameters, attachments: attachments) { messageInfo, error in
                    XCTAssertNil(error)
                    expectation2.fulfill()
                }
            }
        }

        waitForExpectations(timeout: 30) { error in
            XCTAssertNil(error)
        }
    }

}
