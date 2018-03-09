import Foundation
import ObjectMapper
open class ReservePhoneNumber_Response_ReserveRecord: Mappable {
    /*
    Phone number in E.164 format without a '+'
    */
    open var `phoneNumber`: String?
    /*
    Domestic format of a phone number
    */
    open var `formattedNumber`: String?
    /*
    The datetime up to which the number is reserved in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. No value means that number is not reserved anymore
    */
    open var `reservedTill`: String?
    /*
    Internal identifier of phone number reservation; encoded data including reservation type (by brand, by account, by session), particular brand/account/session data, and reservation date and time
    */
    open var `reservationId`: String?
    /*
    Phone number status
    */
    open var `status`: String?
    /*
    The error code in case of reservation/un-reservation failure
    */
    open var `error`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, formattedNumber: String? = nil, reservedTill: String? = nil, reservationId: String? = nil, status: String? = nil, error: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.formattedNumber = `formattedNumber`
        self.reservedTill = `reservedTill`
        self.reservationId = `reservationId`
        self.status = `status`
        self.error = `error`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `formattedNumber` <- map["formattedNumber"]
        `reservedTill` <- map["reservedTill"]
        `reservationId` <- map["reservationId"]
        `status` <- map["status"]
        `error` <- map["error"]
    }
}
