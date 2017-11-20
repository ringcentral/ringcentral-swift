import Foundation
import ObjectMapper
open class DefaultUserRoleRequest: Mappable {
    /*
    Internal identifier of a user role to be set as default, see User Role List
    */
    open var `id`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil) {
        self.init()
        self.id = `id`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
    }
}
