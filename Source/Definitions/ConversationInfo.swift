import Foundation
import ObjectMapper
open class ConversationInfo: Mappable {
    /*
    Internal identifier of a conversation
    */
    open var `id`: String?
    /*
    Deprecated. Link to a conversation resource
    */
    open var `uri`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
    }
}
