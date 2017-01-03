import Foundation
import ObjectMapper
open class ReferenceInfo: Definition {
    // Non-RC identifier of an extension
    open var `ref`: String?
    // Type of external identifier
    open var `type`: String?
    convenience public init(ref: String? = nil, type: String? = nil) {
        self.init()
        self.ref = `ref`
        self.type = `type`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `ref` <- map["ref"]
        `type` <- map["type"]
    }
}
