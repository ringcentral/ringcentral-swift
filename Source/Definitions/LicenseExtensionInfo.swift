import Foundation
import ObjectMapper
open class LicenseExtensionInfo: Mappable {
    /*
    Internal identifier of an extension
    */
    open var `id`: String?
    /*
    Canonical URI of an extension
    */
    open var `uri`: String?
    /*
    Number of an extension
    */
    open var `extensionNumber`: String?
    /*
    User name of an extension
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, extensionNumber: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.extensionNumber = `extensionNumber`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
        `name` <- map["name"]
    }
}
