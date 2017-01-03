import Foundation
import ObjectMapper
open class DepartmentInfo: Definition {
    // Internal identifier of a department extension
    open var `id`: String?
    // Canonical URI of a department extension
    open var `uri`: String?
    // Number of a department extension
    open var `extensionNumber`: String?
    convenience public init(id: String? = nil, uri: String? = nil, extensionNumber: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.extensionNumber = `extensionNumber`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
    }
}
