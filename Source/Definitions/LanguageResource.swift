import Foundation
import ObjectMapper
open class LanguageResource: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `localeCode`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil, localeCode: String? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.localeCode = `localeCode`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `localeCode` <- map["localeCode"]
    }
}
