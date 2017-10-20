import Foundation
import ObjectMapper
open class RingOut_Request_From: Mappable {
    /*
    Phone number in E.164 format
    */
    open var `phoneNumber`: String?
    /*
    Internal identifier of a forwarding number; returned in response in the id field. Can be specified instead of the phoneNumber attribute
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
