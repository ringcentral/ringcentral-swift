import Foundation
import ObjectMapper
open class Cookie: Mappable {
    /*
    */
    open var `name`: String?
    /*
    */
    open var `value`: String?
    /*
    */
    open var `version`: Int?
    /*
    */
    open var `path`: String?
    /*
    */
    open var `domain`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(name: String? = nil, value: String? = nil, version: Int? = nil, path: String? = nil, domain: String? = nil) {
        self.init()
        self.name = `name`
        self.value = `value`
        self.version = `version`
        self.path = `path`
        self.domain = `domain`
    }
    open func mapping(map: Map) {
        `name` <- map["name"]
        `value` <- map["value"]
        `version` <- map["version"]
        `path` <- map["path"]
        `domain` <- map["domain"]
    }
}
