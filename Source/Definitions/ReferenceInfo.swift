import Foundation
import ObjectMapper
import Alamofire
open class ReferenceInfo: Mappable {
    // Non-RC identifier of an extension
    open var `ref`: String?
    // Type of external identifier
    open var `type`: String?
    public init() {
    }
    convenience public init(ref: String? = nil, type: String? = nil) {
        self.init()
        self.ref = `ref`
        self.type = `type`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `ref` <- map["ref"]
        `type` <- map["type"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
