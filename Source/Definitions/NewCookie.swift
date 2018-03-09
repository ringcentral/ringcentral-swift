import Foundation
import ObjectMapper
open class NewCookie: Mappable {
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
    /*
    */
    open var `comment`: String?
    /*
    */
    open var `maxAge`: Int?
    /*
    */
    open var `expiry`: String?
    /*
    */
    open var `secure`: Bool?
    /*
    */
    open var `httpOnly`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(name: String? = nil, value: String? = nil, version: Int? = nil, path: String? = nil, domain: String? = nil, comment: String? = nil, maxAge: Int? = nil, expiry: String? = nil, secure: Bool? = nil, httpOnly: Bool? = nil) {
        self.init()
        self.name = `name`
        self.value = `value`
        self.version = `version`
        self.path = `path`
        self.domain = `domain`
        self.comment = `comment`
        self.maxAge = `maxAge`
        self.expiry = `expiry`
        self.secure = `secure`
        self.httpOnly = `httpOnly`
    }
    open func mapping(map: Map) {
        `name` <- map["name"]
        `value` <- map["value"]
        `version` <- map["version"]
        `path` <- map["path"]
        `domain` <- map["domain"]
        `comment` <- map["comment"]
        `maxAge` <- map["maxAge"]
        `expiry` <- map["expiry"]
        `secure` <- map["secure"]
        `httpOnly` <- map["httpOnly"]
    }
}
