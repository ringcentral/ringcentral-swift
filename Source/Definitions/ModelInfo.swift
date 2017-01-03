import Foundation
import ObjectMapper
open class ModelInfo: Definition {
    // Device model identifier. Mandatory when ordering a HardPhone if boxBillingId is not used for ordering
    open var `id`: String?
    // Device name
    open var `name`: String?
    // Addons description
    open var `addons`: [AddonInfo]?
    convenience public init(id: String? = nil, name: String? = nil, addons: [AddonInfo]? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.addons = `addons`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `addons` <- map["addons"]
    }
}
