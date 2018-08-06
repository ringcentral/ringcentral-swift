import Foundation
import ObjectMapper
open class AddonInfo: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `count`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil, count: String? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.count = `count`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `count` <- map["count"]
    }
}
