import Foundation
import ObjectMapper
import Alamofire
open class PresetInfo: Mappable {
    // Link to a greeting resource
    open var `uri`: String?
    // Internal identifier of greeting
    open var `id`: String?
    // Name of a greeting
    open var `name`: String?
    public init() {
    }
    convenience public init(uri: String? = nil, id: String? = nil, name: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.name = `name`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
