import Foundation
import ObjectMapper
import Alamofire
open class CountryInfo: Mappable {
    // Internal identifier of a home country
    open var `id`: String?
    // Canonical URI of a home country
    open var `uri`: String?
    // Official name of a home country
    open var `name`: String?
    public init() {
    }
    convenience public init(id: String? = nil, uri: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.name = `name`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `name` <- map["name"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
