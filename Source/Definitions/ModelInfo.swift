import Foundation
import ObjectMapper
open class ModelInfo: Mappable {
    /*
    Addon identifier. For HardPhones of certain types, which are compatible with this addon identifier
    */
    open var `id`: String?
    /*
    Device name
    */
    open var `name`: String?
    /*
    Addons description
    */
    open var `addons`: AddonInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil, addons: AddonInfo? = nil) {
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
