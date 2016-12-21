import Foundation
import ObjectMapper
import Alamofire
open class AttachmentInfo: Mappable {
    // Link to custom data attachment
    open var `uri`: String?
    // Type of custom data attachment, see also MIME Types
    open var `contentType`: String?
    public init() {
    }
    convenience public init(uri: String? = nil, contentType: String? = nil) {
        self.init()
        self.uri = `uri`
        self.contentType = `contentType`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `contentType` <- map["contentType"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
