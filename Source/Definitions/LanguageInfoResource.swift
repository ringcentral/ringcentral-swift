import Foundation
import ObjectMapper
open class LanguageInfoResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `isoCode`: String?
    /*
    */
    open var `localeCode`: String?
    /*
    */
    open var `ui`: Bool?
    /*
    */
    open var `greeting`: Bool?
    /*
    */
    open var `formattingLocale`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, name: String? = nil, isoCode: String? = nil, localeCode: String? = nil, ui: Bool? = nil, greeting: Bool? = nil, formattingLocale: Bool? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.name = `name`
        self.isoCode = `isoCode`
        self.localeCode = `localeCode`
        self.ui = `ui`
        self.greeting = `greeting`
        self.formattingLocale = `formattingLocale`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `isoCode` <- map["isoCode"]
        `localeCode` <- map["localeCode"]
        `ui` <- map["ui"]
        `greeting` <- map["greeting"]
        `formattingLocale` <- map["formattingLocale"]
    }
}
