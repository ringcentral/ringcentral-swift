import Foundation
import ObjectMapper
open class PromptLanguageInfo: Mappable {
    /*
    Link to prompt language
    */
    open var `uri`: String?
    /*
    Internal identifier of an language
    */
    open var `id`: String?
    /*
    Language name
    */
    open var `name`: String?
    /*
    Language locale code
    */
    open var `localeCode`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, name: String? = nil, localeCode: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.name = `name`
        self.localeCode = `localeCode`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `localeCode` <- map["localeCode"]
    }
}
