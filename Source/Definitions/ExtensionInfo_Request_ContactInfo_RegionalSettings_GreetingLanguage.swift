import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_ContactInfo_RegionalSettings_GreetingLanguage: Mappable {
    // Internal identifier of a greeting language
    open var `id`: String?
    public init() {
    }
    convenience public init(id: String? = nil) {
        self.init()
        self.id = `id`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
