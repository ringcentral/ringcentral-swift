import Foundation
import ObjectMapper
open class PagingDeviceInfo: Mappable {
    /*
    Internal identifier of a paging device
    */
    open var `id`: String?
    /*
    Link to a paging device resource
    */
    open var `uri`: String?
    /*
    Name of a paging device
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `name` <- map["name"]
    }
}
