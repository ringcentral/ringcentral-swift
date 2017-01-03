import Foundation
import ObjectMapper
open class PresetInfo: Definition {
    // Link to a greeting resource
    open var `uri`: String?
    // Internal identifier of greeting
    open var `id`: String?
    // Name of a greeting
    open var `name`: String?
    convenience public init(uri: String? = nil, id: String? = nil, name: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.name = `name`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
    }
}
