import Foundation
import ObjectMapper
open class IVRMenuExtensionInfo: Mappable {
    /*
    Link to an extension resource
    */
    open var `uri`: String?
    /*
    Internal identifier of an extension
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
