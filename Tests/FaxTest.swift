import XCTest
import RingCentral
import Alamofire


class FaxTest: BaseTest {

    func testSendingFax() {
        let expectation1 = expectation(description: "expectation1")
        let expectation2 = expectation(description: "expectation2")

        let parameters: Parameters = ["to": [["phoneNumber": Config.getInstance().receiver!]]]
        let postParameters = FaxPath.PostParameters(to: [CallerInfo(phoneNumber: Config.getInstance().receiver!)])
        var attachments: [Attachment] = []
        Alamofire.download("https://raw.githubusercontent.com/ringcentral/ringcentral-swift/master/README.md").responseData { response in
            if let textData = response.result.value {
                attachments.append(Attachment(fileName: "README.txt", contentType: "text/plain", data: textData))
                rc.restapi().account().extension().fax().post(parameters: parameters, attachments: attachments) { messageInfo, error in
                    XCTAssertNil(error)
                    expectation1.fulfill()
                }
                rc.restapi().account().extension().fax().post(parameters: postParameters, attachments: attachments) { messageInfo, error in
                    XCTAssertNil(error)
                    expectation2.fulfill()
                }
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
        let postParameters = MmsPath.PostParameters(from: CallerInfo(phoneNumber: Config.getInstance().username!), to: [CallerInfo(phoneNumber: Config.getInstance().receiver!)])
        var attachments: [Attachment] = []
        Alamofire.download("https://assets-cdn.github.com/images/modules/about/about-header-2016.jpg").responseData { response in
            if let textData = response.result.value {
                attachments.append(Attachment(fileName: "test.jpg", contentType: "image/jpeg", data: textData))
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

        waitForExpectations(timeout: 20) { error in
            XCTAssertNil(error)
        }
    }

}
