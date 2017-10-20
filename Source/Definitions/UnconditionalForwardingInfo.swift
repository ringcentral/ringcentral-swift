import Foundation
import ObjectMapper
open class UnconditionalForwardingInfo: Mappable {
    /*
    Phone number to which the call is forwarded
    */
    open var `phoneNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
    }
}
