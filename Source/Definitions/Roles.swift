import Foundation
import ObjectMapper
open class Roles: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    Internal identifier of a role
    */
    open var `id`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
    }
}
