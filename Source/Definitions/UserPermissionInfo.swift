import Foundation
import ObjectMapper
import Alamofire
open class UserPermissionInfo: Mappable {
    // Internal identifier of a permission
    open var `id`: String?
    // Canonical URI of a permission resource
    open var `uri`: String?
    public init() {
    }
    convenience public init(id: String? = nil, uri: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
