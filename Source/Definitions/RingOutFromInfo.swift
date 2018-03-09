import Foundation
import ObjectMapper
open class RingOutFromInfo: Mappable {
    /*
    */
    open var `phoneNumber`: String?
    /*
    */
    open var `forwardingNumberId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, forwardingNumberId: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.forwardingNumberId = `forwardingNumberId`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `forwardingNumberId` <- map["forwardingNumberId"]
    }
}
