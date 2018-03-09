import Foundation
import ObjectMapper
open class TimezoneResource: Mappable {
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
    open var `description`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, name: String? = nil, description: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.name = `name`
        self.description = `description`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `description` <- map["description"]
    }
}
