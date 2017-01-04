import Foundation
import ObjectMapper
open class ReferenceInfo: Mappable {
    // Non-RC identifier of an extension
    open var `ref`: String?
    // Type of external identifier
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(ref: String? = nil, type: String? = nil) {
        self.init()
        self.ref = `ref`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `ref` <- map["ref"]
        `type` <- map["type"]
    }
}
