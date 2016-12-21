import Foundation
import ObjectMapper
import Alamofire
open class PresenceNotification: Mappable {
    // Universally unique identifier of a notification
    open var `uuid`: String?
    // Event filter URI
    open var `event`: String?
    // Internal identifier of a subscription
    open var `subscriptionId`: String?
    // The datetime of sending a notification in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `timestamp`: String?
    // Notification payload body
    open var `body`: PresenceEvent?
    public init() {
    }
    convenience public init(uuid: String? = nil, event: String? = nil, subscriptionId: String? = nil, timestamp: String? = nil, body: PresenceEvent? = nil) {
        self.init()
        self.uuid = `uuid`
        self.event = `event`
        self.subscriptionId = `subscriptionId`
        self.timestamp = `timestamp`
        self.body = `body`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uuid` <- map["uuid"]
        `event` <- map["event"]
        `subscriptionId` <- map["subscriptionId"]
        `timestamp` <- map["timestamp"]
        `body` <- map["body"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
