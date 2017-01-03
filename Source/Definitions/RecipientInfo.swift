import Foundation
import ObjectMapper
open class RecipientInfo: Definition {
    // Link to a recipient extension resource
    open var `uri`: String?
    // Internal identifier of a recipient extension
    open var `id`: String?
    convenience public init(uri: String? = nil, id: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
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
    }
}
