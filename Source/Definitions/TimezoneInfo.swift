import Foundation
import ObjectMapper
import Alamofire
open class TimezoneInfo: Mappable {
    // Internal identifier of a timezone
    open var `id`: String?
    // Canonical URI of a timezone
    open var `uri`: String?
    // Short name of a timezone
    open var `name`: String?
    // Meaningful description of the timezone
    open var `description`: String?
    public init() {
    }
    convenience public init(id: String? = nil, uri: String? = nil, name: String? = nil, description: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.name = `name`
        self.description = `description`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `name` <- map["name"]
        `description` <- map["description"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
