import Foundation
import ObjectMapper
open class ServiceParameterResource: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `value`: String?
    /*
    */
    open var `accountId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, value: String? = nil, accountId: String? = nil) {
        self.init()
        self.id = `id`
        self.value = `value`
        self.accountId = `accountId`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `value` <- map["value"]
        `accountId` <- map["accountId"]
    }
}
