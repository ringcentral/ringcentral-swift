import Foundation
import ObjectMapper
open class ForwardingNumberInfoRulesCreateRuleRequest: Mappable {
    /*
    Internal identifier of a forwarding number
    */
    open var `id`: String?
    /*
    Forwarding phone number type
    */
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, type: String? = nil) {
        self.init()
        self.id = `id`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
    }
}
