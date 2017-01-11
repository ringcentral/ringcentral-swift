import Foundation
import ObjectMapper
open class ExtensionInfoEvent: Mappable {
    // Internal identifier of an extension
    open var `extensionId`: String?
    // Type of extension info change
    open var `eventType`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extensionId: String? = nil, eventType: String? = nil) {
        self.init()
        self.extensionId = `extensionId`
        self.eventType = `eventType`
    }
    open func mapping(map: Map) {
        `extensionId` <- map["extensionId"]
        `eventType` <- map["eventType"]
    }
}
