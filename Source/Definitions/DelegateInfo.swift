import Foundation
import ObjectMapper
open class DelegateInfo: Mappable {
    /*
    Internal identifier of a Secretary extension
    */
    open var `id`: String?
    /*
    Custom name of a Secretary extension
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
    }
}
