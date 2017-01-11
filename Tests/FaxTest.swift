import XCTest
import RingCentral
import Alamofire


class FaxTest: BaseTest {

    func testSendingFax() {
        let expectation1 = expectation(description: "expectation1")

        let parameters = FaxPath.PostParameters(to: [CallerInfo(phoneNumber: Config.getInstance().receiver!)])
        var attachments: [Attachment] = []
        Alamofire.download("https://cdn.rawgit.com/Alamofire/Alamofire/master/LICENSE").responseData { response in
            if let textData = response.result.value {
                attachments.append(Attachment(fileName: "MIT.txt", contentType: "text/plain", data: textData))
                rc.restapi().account().extension().fax().post(parameters: parameters, attachments: attachments) { messageInfo, error in
                    XCTAssertNil(error)
                    expectation1.fulfill()
                }
            }
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

}
