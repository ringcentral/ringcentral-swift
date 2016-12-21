import Foundation
import ObjectMapper
import Alamofire
open class DepartmentInfo: Mappable {
    // Internal identifier of a department extension
    open var `id`: String?
    // Canonical URI of a department extension
    open var `uri`: String?
    // Number of a department extension
    open var `extensionNumber`: String?
    public init() {
    }
    convenience public init(id: String? = nil, uri: String? = nil, extensionNumber: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.extensionNumber = `extensionNumber`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
