import Foundation
import ObjectMapper
open class HostInfoRequest: Mappable {
    /*
    Internal identifier of an extension which is assigned to be a meeting host. The default value is currently logged-in extension identifier
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
