import Foundation
import ObjectMapper
open class ExtensionListEvent: Definition {
    // Internal identifier of an extension
    open var `extensionId`: String?
    // Type of extension info change
    open var `eventType`: String?
    convenience public init(extensionId: String? = nil, eventType: String? = nil) {
        self.init()
        self.extensionId = `extensionId`
        self.eventType = `eventType`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `extensionId` <- map["extensionId"]
        `eventType` <- map["eventType"]
    }
}
