import Foundation
import ObjectMapper
import Alamofire
open class LanguageInfo: Mappable {
    // Internal identifier of a language
    open var `id`: String?
    // Canonical URI of a language
    open var `uri`: String?
    // Indicates whether a language is available as greeting language
    open var `greeting`: Bool?
    // Indicates whether a language is available as formatting locale
    open var `formattingLocale`: Bool?
    // Localization code of a language
    open var `localeCode`: String?
    // Official name of a language
    open var `name`: String?
    // Indicates whether a language is available as UI language
    open var `ui`: Bool?
    public init() {
    }
    convenience public init(id: String? = nil, uri: String? = nil, greeting: Bool? = nil, formattingLocale: Bool? = nil, localeCode: String? = nil, name: String? = nil, ui: Bool? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.greeting = `greeting`
        self.formattingLocale = `formattingLocale`
        self.localeCode = `localeCode`
        self.name = `name`
        self.ui = `ui`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `greeting` <- map["greeting"]
        `formattingLocale` <- map["formattingLocale"]
        `localeCode` <- map["localeCode"]
        `name` <- map["name"]
        `ui` <- map["ui"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
