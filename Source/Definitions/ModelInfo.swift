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
    open var `addons`: [AddonInfo]?
    /*
    Device feature or multiple features supported
    */
    open var `features`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil, addons: [AddonInfo]? = nil, features: [String]? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.addons = `addons`
        self.features = `features`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `addons` <- map["addons"]
        `features` <- map["features"]
    }
}
