import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfoEvent: Mappable {
    // Internal identifier of an extension
    open var `extensionId`: String?
    // Type of extension info change
    open var `eventType`: String?
    public init() {
    }
    convenience public init(extensionId: String? = nil, eventType: String? = nil) {
        self.init()
        self.extensionId = `extensionId`
        self.eventType = `eventType`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `extensionId` <- map["extensionId"]
        `eventType` <- map["eventType"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
