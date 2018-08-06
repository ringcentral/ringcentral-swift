import Foundation
import ObjectMapper
open class PermissionIdResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    Site compatibility flag set for permission
    */
    open var `siteCompatible`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, siteCompatible: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.siteCompatible = `siteCompatible`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `siteCompatible` <- map["siteCompatible"]
    }
}
