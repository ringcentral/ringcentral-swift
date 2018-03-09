import Foundation
import ObjectMapper
open class FaxCallerInfo: Mappable {
    /*
    Recipient information. Phone number property is mandatory. Optional for resend fax request
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
