import Foundation
import ObjectMapper
open class PresenceLineEvent_ExtensionInfo: Definition {
    // Internal identifier of the extension
    open var `id`: String?
    convenience public init(id: String? = nil) {
        self.init()
        self.id = `id`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
    }
}
