import Foundation
import ObjectMapper
open class MessageEvent: Mappable {
    /*
    Internal identifier of an extension. Optional parameter
    */
    open var `extensionId`: Int?
    /*
    The datetime when the message was last modified in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    */
    open var `lastUpdated`: String?
    /*
    Message changes
    */
    open var `changes`: [MessageChange]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extensionId: Int? = nil, lastUpdated: String? = nil, changes: [MessageChange]? = nil) {
        self.init()
        self.extensionId = `extensionId`
        self.lastUpdated = `lastUpdated`
        self.changes = `changes`
    }
    open func mapping(map: Map) {
        `extensionId` <- map["extensionId"]
        `lastUpdated` <- map["lastUpdated"]
        `changes` <- map["changes"]
    }
}
