import Foundation
import ObjectMapper
open class AuthenticationScheme: Mappable {
    /*
    */
    open var `description`: String?
    /*
    */
    open var `documentationUrl`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `specUrl`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(description: String? = nil, documentationUrl: String? = nil, name: String? = nil, specUrl: String? = nil) {
        self.init()
        self.description = `description`
        self.documentationUrl = `documentationUrl`
        self.name = `name`
        self.specUrl = `specUrl`
    }
    open func mapping(map: Map) {
        `description` <- map["description"]
        `documentationUrl` <- map["documentationUrl"]
        `name` <- map["name"]
        `specUrl` <- map["specUrl"]
    }
}
