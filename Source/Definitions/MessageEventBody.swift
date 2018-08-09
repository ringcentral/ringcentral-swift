import Foundation
import ObjectMapper
open class MessageEventBody: Mappable {
    /*
    Internal identifier of an extension
    */
    open var `extensionId`: String?
    /*
    Datetime when the message was last modified in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    */
    open var `lastUpdated`: String?
    /*
    Message Changes
    */
    open var `changes`: [MessageChanges]?
    /*
    Internal identifier of a subscription owner extension
    */
    open var `ownerId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extensionId: String? = nil, lastUpdated: String? = nil, changes: [MessageChanges]? = nil, ownerId: String? = nil) {
        self.init()
        self.extensionId = `extensionId`
        self.lastUpdated = `lastUpdated`
        self.changes = `changes`
        self.ownerId = `ownerId`
    }
    open func mapping(map: Map) {
        `extensionId` <- (map["extensionId"], StringTransform())
        `lastUpdated` <- map["lastUpdated"]
        `changes` <- map["changes"]
        `ownerId` <- map["ownerId"]
    }
}
