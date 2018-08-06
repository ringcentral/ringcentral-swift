import Foundation
import ObjectMapper
open class ExtensionListEventBody: Mappable {
    /*
    Internal identifier of an extension
    */
    open var `extensionId`: String?
    /*
    Type of extension info change
    */
    open var `eventType`: String?
    /*
    Internal identifier of a subscription owner extension
    */
    open var `ownerId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extensionId: String? = nil, eventType: String? = nil, ownerId: String? = nil) {
        self.init()
        self.extensionId = `extensionId`
        self.eventType = `eventType`
        self.ownerId = `ownerId`
    }
    open func mapping(map: Map) {
        `extensionId` <- map["extensionId"]
        `eventType` <- map["eventType"]
        `ownerId` <- map["ownerId"]
    }
}
