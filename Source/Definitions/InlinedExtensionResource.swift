import Foundation
import ObjectMapper
open class InlinedExtensionResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `extensionNumber`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, extensionNumber: String? = nil, id: String? = nil, type: String? = nil) {
        self.init()
        self.uri = `uri`
        self.extensionNumber = `extensionNumber`
        self.id = `id`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
    }
}
