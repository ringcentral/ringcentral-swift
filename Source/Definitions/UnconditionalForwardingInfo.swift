import Foundation
import ObjectMapper
open class UnconditionalForwardingInfo: Definition {
    // Phone number to which the call is forwarded
    open var `phoneNumber`: String?
    convenience public init(phoneNumber: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
    }
}
