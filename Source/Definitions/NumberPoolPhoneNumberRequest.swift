import Foundation
import ObjectMapper
open class NumberPoolPhoneNumberRequest: Mappable {
    /*
    Phone number in E.164 format
    */
    open var `phoneNumber`: String?
    /*
    Datetime up to which the number is reserved in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. If it is omitted or explicitly set to 'null', the number will be un-reserved if it was reserved previously by the same session. Also the values 'Min' and 'Max' are supported. 'Min' is 30 seconds; and 'Max' is 30 days (for reservation by brand) and 20 minutes (for reservation by account/session)
    */
    open var `reservedTill`: String?
    /*
    Internal identifier of a phone number reservation; encoded data including reservation type (by brand, by account, by session), particular brand/account/session data, and reservation date and time
    */
    open var `reservationId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, reservedTill: String? = nil, reservationId: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.reservedTill = `reservedTill`
        self.reservationId = `reservationId`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `reservedTill` <- map["reservedTill"]
        `reservationId` <- map["reservationId"]
    }
}
