import Foundation
import ObjectMapper
open class CustomCompanyGreetingLanguageInfo: Mappable {
    /*
    Internal identifier of a greeting language
    */
    open var `id`: String?
    /*
    Link to a greeting language
    */
    open var `uri`: String?
    /*
    Name of a greeting language
    */
    open var `name`: String?
    /*
    Locale code of a greeting language
    */
    open var `localeCode`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, name: String? = nil, localeCode: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.name = `name`
        self.localeCode = `localeCode`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `name` <- map["name"]
        `localeCode` <- map["localeCode"]
    }
}
