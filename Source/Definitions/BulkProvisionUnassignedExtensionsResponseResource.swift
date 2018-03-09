import Foundation
import ObjectMapper
open class BulkProvisionUnassignedExtensionsResponseResource: Mappable {
    /*
    */
    open var `items`: [ExtensionAssignmentResult]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(items: [ExtensionAssignmentResult]? = nil) {
        self.init()
        self.items = `items`
    }
    open func mapping(map: Map) {
        `items` <- map["items"]
    }
}
