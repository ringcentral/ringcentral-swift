import Foundation
import ObjectMapper
open class ModelInfo: Mappable {
    /*
    Device model identifier. Mandatory when ordering a HardPhone if boxBillingId is not used for ordering
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
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil, addons: [AddonInfo]? = nil) {
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
