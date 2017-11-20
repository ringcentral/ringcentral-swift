import Foundation
import ObjectMapper
open class DepartmentBulkAssignResource: Mappable {
    /*
    */
    open var `items`: [BulkAssignItem]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(items: [BulkAssignItem]? = nil) {
        self.init()
        self.items = `items`
    }
    open func mapping(map: Map) {
        `items` <- map["items"]
    }
}
