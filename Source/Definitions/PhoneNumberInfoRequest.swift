import Foundation
import ObjectMapper
open class PhoneNumberInfoRequest: Mappable {
    /*
    Phone number
    */
    open var `value`: String?
    /*
    Phone number type
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
