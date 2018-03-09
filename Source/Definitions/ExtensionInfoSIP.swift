import Foundation
import ObjectMapper
open class ExtensionInfoSIP: Mappable {
    /*
    Internal identifier of an extension
    */
    open var `id`: String?
    /*
    Canonical URI of an extension
    */
    open var `uri`: String?
    /*
    Extension number
    */
    open var `extensionNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, extensionNumber: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.extensionNumber = `extensionNumber`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
    }
}
