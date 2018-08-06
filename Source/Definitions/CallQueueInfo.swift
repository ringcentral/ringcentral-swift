import Foundation
import ObjectMapper
open class CallQueueInfo: Mappable {
    /*
    Link to a call queue
    */
    open var `uri`: String?
    /*
    Internal identifier of a call queue
    */
    open var `id`: String?
    /*
    Extension number of a call queue
    */
    open var `extensionNumber`: String?
    /*
    Name of a call queue
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, extensionNumber: String? = nil, name: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.extensionNumber = `extensionNumber`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `extensionNumber` <- map["extensionNumber"]
        `name` <- map["name"]
    }
}
