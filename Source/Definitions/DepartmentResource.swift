import Foundation
import ObjectMapper
open class DepartmentResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `extensionNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, extensionNumber: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.extensionNumber = `extensionNumber`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `extensionNumber` <- map["extensionNumber"]
    }
}
