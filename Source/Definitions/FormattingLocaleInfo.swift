import Foundation
import ObjectMapper
import Alamofire
open class FormattingLocaleInfo: Mappable {
    // Internal identifier of a formatting language
    open var `id`: String?
    // Localization code of a formatting language
    open var `localeCode`: String?
    // Official name of a formatting language
    open var `name`: String?
    public init() {
    }
    convenience public init(id: String? = nil, localeCode: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.localeCode = `localeCode`
        self.name = `name`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `localeCode` <- map["localeCode"]
        `name` <- map["name"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
