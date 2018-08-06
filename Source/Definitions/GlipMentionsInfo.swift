import Foundation
import ObjectMapper
open class GlipMentionsInfo: Mappable {
    /*
    Id of the user
    */
    open var `id`: String?
    /*
    Type of mentions
    */
    open var `type`: String?
    /*
    Name of the user
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, type: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.type = `type`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
        `name` <- map["name"]
    }
}
