import Foundation
import ObjectMapper
open class DeviceModelResource: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `addons`: [Addon]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil, addons: [Addon]? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.addons = `addons`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `addons` <- map["addons"]
    }
}
