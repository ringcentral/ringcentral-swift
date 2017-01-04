import Foundation
import ObjectMapper
open class FormattingLocaleInfo: Mappable {
    // Internal identifier of a formatting language
    open var `id`: String?
    // Localization code of a formatting language
    open var `localeCode`: String?
    // Official name of a formatting language
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, localeCode: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.localeCode = `localeCode`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `localeCode` <- map["localeCode"]
        `name` <- map["name"]
    }
}
