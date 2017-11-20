import Foundation
import ObjectMapper
open class EmailInfo: Mappable {
    /*
    Email address
    */
    open var `value`: String?
    /*
    Email address type
    */
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(value: String? = nil, type: String? = nil) {
        self.init()
        self.value = `value`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `value` <- map["value"]
        `type` <- map["type"]
    }
}
