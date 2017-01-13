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
        Alamofire.download("https://cdn.rawgit.com/Alamofire/Alamofire/master/LICENSE").responseData { response in
            if let textData = response.result.value {
                attachments.append(Attachment(fileName: "MIT.txt", contentType: "text/plain", data: textData))
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

}
