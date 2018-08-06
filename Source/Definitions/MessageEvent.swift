import Foundation
import ObjectMapper
open class MessageEvent: Mappable {
    /*
    Universally unique identifier of a notification
    */
    open var `uuid`: String?
    /*
    Event filter URI
    */
    open var `event`: String?
    /*
    Datetime of sending a notification in [ISO 8601](shttps://en.wikipedia.org/wiki/ISO_8601) format including timezone, for example *2016-03-10T18:07:52.534Z*
    */
    open var `timestamp`: String?
    /*
    Internal identifier of a subscription
    */
    open var `subscriptionId`: String?
    /*
    Notification payload body
    */
    open var `body`: MessageEventBody?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uuid: String? = nil, event: String? = nil, timestamp: String? = nil, subscriptionId: String? = nil, body: MessageEventBody? = nil) {
        self.init()
        self.uuid = `uuid`
        self.event = `event`
        self.timestamp = `timestamp`
        self.subscriptionId = `subscriptionId`
        self.body = `body`
    }
    open func mapping(map: Map) {
        `uuid` <- map["uuid"]
        `event` <- map["event"]
        `timestamp` <- map["timestamp"]
        `subscriptionId` <- map["subscriptionId"]
        `body` <- map["body"]
    }
}
