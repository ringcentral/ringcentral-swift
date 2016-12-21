import Foundation
import ObjectMapper
import Alamofire
open class RecipientInfo: Mappable {
    // Link to a recipient extension resource
    open var `uri`: String?
    // Internal identifier of a recipient extension
    open var `id`: String?
    public init() {
    }
    convenience public init(uri: String? = nil, id: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
