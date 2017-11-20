import Foundation
import ObjectMapper
open class BulkProvisionUnassignedExtensionsRequestResource: Mappable {
    /*
    */
    open var `items`: [BulkProvisionExtensionResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(items: [BulkProvisionExtensionResource]? = nil) {
        self.init()
        self.items = `items`
    }
    open func mapping(map: Map) {
        `items` <- map["items"]
    }
}
