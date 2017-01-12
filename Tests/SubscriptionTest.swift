import XCTest
import RingCentral
import Async
import Alamofire

class SubscriptionTest: BaseTest {

    func testRegister() {
        let subscription = rc.restapi("v1.0").subscription().new()
        subscription.eventFilters.append("/restapi/v1.0/account/~/extension/~/message-store")
        subscription.eventFilters.append("/restapi/v1.0/account/~/extension/~/presence?detailedTelephonyState=true")
        subscription.listeners.append { notification in
            print(notification.json!)
        }
        
        let expectation1 = expectation(description: "expectation1")
        subscription.register() { error in
            XCTAssertNil(error)
            expectation1.fulfill()
        }

        let expectation2 = expectation(description: "expectation2")
        subscription.subscribe() { error in
            XCTAssertNil(error)
            subscription.renew() { error in
                XCTAssertNil(error)
                subscription.remove() { error in
                    XCTAssertNil(error)
                    expectation2.fulfill()
                }
            }
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

    func testList() {
        let subscription = rc.restapi("v1.0").subscription().new()
        subscription.eventFilters.append("/restapi/v1.0/account/~/extension/~/message-store")
        subscription.eventFilters.append("/restapi/v1.0/account/~/extension/~/presence?detailedTelephonyState=true")
        subscription.listeners.append { notification in
            print(notification.json!)
        }

        let expectation1 = expectation(description: "expectation1")
        subscription.register() { error in
            XCTAssertNil(error)
            rc.restapi().subscription().list() { list, error in
                XCTAssertTrue(list?.records?.count ?? 0 > 0)
                subscription.remove() { error in
                    XCTAssertNil(error)
                    expectation1.fulfill()
                }
            }
        }
        
        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

    func testRemove() {
        let subscription = rc.restapi().subscription().new()
        subscription.eventFilters.append("/restapi/v1.0/account/~/extension/~/message-store")
        subscription.listeners.append { notification in
            print(notification)
        }
        let expectation1 = expectation(description: "expectation1")
        subscription.register() { error in
            XCTAssertNil(error)
            XCTAssertTrue(subscription.alive())
            subscription.remove() { error in
                XCTAssertNil(error)
                XCTAssertTrue(!subscription.alive())
                expectation1.fulfill()
            }
        }

        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

    func testSMSNotification() {
        let subscription = rc.restapi().subscription().new()
        subscription.eventFilters.append("/restapi/v1.0/account/~/extension/~/message-store")
        var count = 0
        subscription.listeners.append { notification in
            print(notification.json!)
            XCTAssertTrue(NotificationType.Message == notification.type!)
            let messageNotification: MessageNotification = notification.downcast()!
            XCTAssertNotNil(messageNotification.body)
            XCTAssertNotNil(messageNotification.body!.extensionId)
            XCTAssertTrue(messageNotification.body!.changes!.count > 0)
            XCTAssertTrue("SMS" == messageNotification.body!.changes![0].type!)
            count += 1
        }

        let expectation1 = expectation(description: "expectation1")
        subscription.register() { error in
            XCTAssertNil(error)
            let parameters = SmsPath.PostParameters(
                from: CallerInfo(phoneNumber: Config.getInstance().username!),
                to: [CallerInfo(phoneNumber: Config.getInstance().receiver!)],
                text: "hello world"
            )
//            let parameters: Parameters = [
//                "from": ["phoneNumber": Config.getInstance().username!],
//                "to":[["phoneNumber": Config.getInstance().receiver!]],
//                "text": "hello world"
//            ]
            rc.restapi().account().extension().sms().post(parameters: parameters) { messageInfo, error in
                XCTAssertNil(error)
                expectation1.fulfill()
            }
        }

        let expectation2 = expectation(description: "expectation2")
        Async.main(after: 20.0) {
            XCTAssertTrue(count >= 1)
            subscription.remove() { error in
                XCTAssertNil(error)
                expectation2.fulfill()
            }
        }

        waitForExpectations(timeout: 30) { error in
            XCTAssertNil(error)
        }
    }

    func testDeserialize() {
        let json = "{\"uuid\":\"ec43ed1b-ae0c-4571-a39a-861c432f31d3\",\"event\":\"/restapi/v1.0/account/130829004/extension/130829004/message-store\",\"timestamp\":\"2016-10-28T06:13:43.720Z\",\"subscriptionId\":\"ada0c29a-a914-4c15-bd52-7c27ac918f56\",\"body\":{\"extensionId\":130829004,\"lastUpdated\":\"2016-10-28T06:13:33.931+0000\",\"changes\":[{\"type\":\"SMS\",\"newCount\":1,\"updatedCount\":0}]}}"
        let notification = Notification(json: json)!
        XCTAssertTrue("/restapi/v1.0/account/130829004/extension/130829004/message-store" == notification.event!)
        XCTAssertTrue(NotificationType.Message == notification.type!)
        let messageNotification: MessageNotification = notification.downcast()!
        XCTAssertNotNil(messageNotification.body!.extensionId)
        XCTAssertTrue(130829004 == messageNotification.body!.extensionId!)
    }

    func testParseURL() {
        let url = "/restapi/v1.0/account/130829004/extension/130829004/presence?detailedTelephonyState=true&sipData=true"
        let urlComponents = NSURLComponents(string: url)!
        let queryItems = urlComponents.queryItems!
        let sipData = queryItems.filter({$0.name == "sipData"}).first!
        XCTAssertTrue("true" == sipData.value!)
    }

    func testRefresh() {
        let expectation1 = expectation(description: "expectation1")
        rc.restapi("v1.0").subscription("an-id-which-does-not-exist-on-server-side").put() { subscriptionInfo, error in
            XCTAssertNotNil(error)
            XCTAssertTrue(404 == error!.statusCode)
            expectation1.fulfill()
        }
        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }

}
