import XCTest
import RingCentral

class SpecialTest: BaseTest {

//    func testNotificationTypes() {
//        var json = "{\"uuid\":\"-6947519413845489152-2144468163963379453\",\"event\":\"/restapi/v1.0/account/130829004/extension/130829004/presence?detailedTelephonyState=true\",\"timestamp\":\"2017-01-13T07:42:27.632Z\",\"subscriptionId\":\"99a5fe54-dbec-49b1-80bb-8a239fe14282\",\"body\":{\"extensionId\":130829004,\"lastUpdated\":\"2017-01-13T07:42:20.909+0000\",\"changes\":[{\"type\":\"Fax\",\"newCount\":0,\"updatedCount\":1}]}}"
//        var notification = Notification(json: json)!
//        XCTAssertTrue(.DetailedPresence == notification.type!)
//
//        json = "{\"uuid\":\"-6947519413845489152-2144468163963379453\",\"event\":\"/restapi/v1.0/account/130829004/extension/130829004/presence?detailedTelephonyState=true&sipData=true\",\"timestamp\":\"2017-01-13T07:42:27.632Z\",\"subscriptionId\":\"99a5fe54-dbec-49b1-80bb-8a239fe14282\",\"body\":{\"extensionId\":130829004,\"lastUpdated\":\"2017-01-13T07:42:20.909+0000\",\"changes\":[{\"type\":\"Fax\",\"newCount\":0,\"updatedCount\":1}]}}"
//        notification = Notification(json: json)!
//        XCTAssertTrue(.DetailedPresenceWithSIP == notification.type!)
//
//        json = "{\"uuid\":\"-6947519413845489152-2144468163963379453\",\"event\":\"/restapi/v1.0/account/130829004/extension/130829004\",\"timestamp\":\"2017-01-13T07:42:27.632Z\",\"subscriptionId\":\"99a5fe54-dbec-49b1-80bb-8a239fe14282\",\"body\":{\"extensionId\":130829004,\"lastUpdated\":\"2017-01-13T07:42:20.909+0000\",\"changes\":[{\"type\":\"Fax\",\"newCount\":0,\"updatedCount\":1}]}}"
//        notification = Notification(json: json)!
//        XCTAssertTrue(.ExtensionInfo == notification.type!)
//
//        json = "{\"uuid\":\"-6947519413845489152-2144468163963379453\",\"event\":\"/restapi/v1.0/account/130829004/extension\",\"timestamp\":\"2017-01-13T07:42:27.632Z\",\"subscriptionId\":\"99a5fe54-dbec-49b1-80bb-8a239fe14282\",\"body\":{\"extensionId\":130829004,\"lastUpdated\":\"2017-01-13T07:42:20.909+0000\",\"changes\":[{\"type\":\"Fax\",\"newCount\":0,\"updatedCount\":1}]}}"
//        notification = Notification(json: json)!
//        XCTAssertTrue(.ExtensionList == notification.type!)
//
//        json = "{\"uuid\":\"-6947519413845489152-2144468163963379453\",\"event\":\"/restapi/v1.0/account/130829004/extension/130829004/incoming-call-pickup\",\"timestamp\":\"2017-01-13T07:42:27.632Z\",\"subscriptionId\":\"99a5fe54-dbec-49b1-80bb-8a239fe14282\",\"body\":{\"extensionId\":130829004,\"lastUpdated\":\"2017-01-13T07:42:20.909+0000\",\"changes\":[{\"type\":\"Fax\",\"newCount\":0,\"updatedCount\":1}]}}"
//        notification = Notification(json: json)!
//        XCTAssertTrue(.IncomingCall == notification.type!)
//
//        json = "{\"uuid\":\"-6947519413845489152-2144468163963379453\",\"event\":\"/restapi/v1.0/account/130829004/extension/130829004/message-store/instant?type=SMS\",\"timestamp\":\"2017-01-13T07:42:27.632Z\",\"subscriptionId\":\"99a5fe54-dbec-49b1-80bb-8a239fe14282\",\"body\":{\"extensionId\":130829004,\"lastUpdated\":\"2017-01-13T07:42:20.909+0000\",\"changes\":[{\"type\":\"Fax\",\"newCount\":0,\"updatedCount\":1}]}}"
//        notification = Notification(json: json)!
//        XCTAssertTrue(.InstantMessage == notification.type!)
//
//        json = "{\"uuid\":\"-6947519413845489152-2144468163963379453\",\"event\":\"/restapi/v1.0/account/130829004/extension/130829004/message-store\",\"timestamp\":\"2017-01-13T07:42:27.632Z\",\"subscriptionId\":\"99a5fe54-dbec-49b1-80bb-8a239fe14282\",\"body\":{\"extensionId\":130829004,\"lastUpdated\":\"2017-01-13T07:42:20.909+0000\",\"changes\":[{\"type\":\"Fax\",\"newCount\":0,\"updatedCount\":1}]}}"
//        notification = Notification(json: json)!
//        XCTAssertTrue(.Message == notification.type!)
//
//        json = "{\"uuid\":\"-6947519413845489152-2144468163963379453\",\"event\":\"/restapi/v1.0/account/130829004/extension/130829004/presence/line\",\"timestamp\":\"2017-01-13T07:42:27.632Z\",\"subscriptionId\":\"99a5fe54-dbec-49b1-80bb-8a239fe14282\",\"body\":{\"extensionId\":130829004,\"lastUpdated\":\"2017-01-13T07:42:20.909+0000\",\"changes\":[{\"type\":\"Fax\",\"newCount\":0,\"updatedCount\":1}]}}"
//        notification = Notification(json: json)!
//        XCTAssertTrue(.PresenceLine == notification.type!)
//
//        json = "{\"uuid\":\"-6947519413845489152-2144468163963379453\",\"event\":\"/restapi/v1.0/account/130829004/extension/130829004/presence/line/presence\",\"timestamp\":\"2017-01-13T07:42:27.632Z\",\"subscriptionId\":\"99a5fe54-dbec-49b1-80bb-8a239fe14282\",\"body\":{\"extensionId\":130829004,\"lastUpdated\":\"2017-01-13T07:42:20.909+0000\",\"changes\":[{\"type\":\"Fax\",\"newCount\":0,\"updatedCount\":1}]}}"
//        notification = Notification(json: json)!
//        XCTAssertTrue(.Presence == notification.type!)
//
//        json = "{\"uuid\":\"-6947519413845489152-2144468163963379453\",\"event\":\"/restapi/v1.0/account/130829004/extension/130829004/presence\",\"timestamp\":\"2017-01-13T07:42:27.632Z\",\"subscriptionId\":\"99a5fe54-dbec-49b1-80bb-8a239fe14282\",\"body\":{\"extensionId\":130829004,\"lastUpdated\":\"2017-01-13T07:42:20.909+0000\",\"changes\":[{\"type\":\"Fax\",\"newCount\":0,\"updatedCount\":1}]}}"
//        notification = Notification(json: json)!
//        XCTAssertTrue(.Presence == notification.type!)
//
//        json = "{\"uuid\":\"-6947519413845489152-2144468163963379453\",\"event\":\"/restapi/v1.0\",\"timestamp\":\"2017-01-13T07:42:27.632Z\",\"subscriptionId\":\"99a5fe54-dbec-49b1-80bb-8a239fe14282\",\"body\":{\"extensionId\":130829004,\"lastUpdated\":\"2017-01-13T07:42:20.909+0000\",\"changes\":[{\"type\":\"Fax\",\"newCount\":0,\"updatedCount\":1}]}}"
//        notification = Notification(json: json)!
//        XCTAssertTrue(nil == notification.type)
//    }

}
