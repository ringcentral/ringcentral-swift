import Foundation
import ObjectMapper
open class SimpleResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `resourceDescription`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `ver`: ApiVersionResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, resourceDescription: String? = nil, id: String? = nil, ver: ApiVersionResource? = nil) {
        self.init()
        self.uri = `uri`
        self.resourceDescription = `resourceDescription`
        self.id = `id`
        self.ver = `ver`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `resourceDescription` <- map["resourceDescription"]
        `id` <- (map["id"], StringTransform())
        `ver` <- map["ver"]
    }
}
