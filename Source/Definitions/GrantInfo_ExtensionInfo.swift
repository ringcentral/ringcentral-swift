import Foundation
import ObjectMapper
import Alamofire
open class GrantInfo_ExtensionInfo: Mappable {
    // Internal identifier of an extension
    open var `id`: String?
    // Canonical URI of an extension
    open var `uri`: String?
    // Extension short number (usually 3 or 4 digits)
    open var `extensionNumber`: String?
    // Extension type
    open var `type`: String?
    public init() {
    }
    convenience public init(id: String? = nil, uri: String? = nil, extensionNumber: String? = nil, type: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.extensionNumber = `extensionNumber`
        self.type = `type`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
        `type` <- map["type"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
