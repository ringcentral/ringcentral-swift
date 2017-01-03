import Foundation
import ObjectMapper
open class AddonInfo: Definition {
    // Addon identifier. For HardPhones of certain types, which are compatible with this addon identifier
    open var `id`: String?
    // Number of addons. For HardPhones of certain types, which are compatible with such addon identifier
    open var `count`: Int?
    convenience public init(id: String? = nil, count: Int? = nil) {
        self.init()
        self.id = `id`
        self.count = `count`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `count` <- map["count"]
    }
}
