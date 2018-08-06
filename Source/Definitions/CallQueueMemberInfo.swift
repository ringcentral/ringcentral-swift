import Foundation
import ObjectMapper
open class CallQueueMemberInfo: Mappable {
    /*
    Link to a call queue member
    */
    open var `uri`: String?
    /*
    Internal identifier of a call queue member
    */
    open var `id`: String?
    /*
    Extension number of a call queue member
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
