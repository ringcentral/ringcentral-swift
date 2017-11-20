import Foundation
import ObjectMapper
open class CreateAccountRequest: Mappable {
    /*
    Main account VoIP phone number, either Local or Toll-Free. Cannot be Fax Only. Obtained via lookup/reserve API
    */
    open var `mainNumber`: String?
    /*
    Operator's extension information. This extension will receive all calls and messages intended for the operator
    */
    open var `operator`: GetExtensionInfoResponse?
    /*
    Partner identifier for this account
    */
    open var `partnerId`: String?
    /*
    Promotion code to calculate a discount
    */
    open var `promotionCode`: String?
    /*
    Internal identifier of phone number reservation; encoded data including reservation type (by brand, by account, by session), particular brand/account/session data, and reservation date and time
    */
    open var `reservationId`: String?
    /*
    Account service information, brand identifier and service plan
    */
    open var `serviceInfo`: GetServiceInfoResponse?
    /*
    The status with which an account is created. The default value is 'Initial'
    */
    open var `status`: String?
    /*
    Account sign up data
    */
    open var `signupInfo`: AccountSignupInfoRequest?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(mainNumber: String? = nil, operator: GetExtensionInfoResponse? = nil, partnerId: String? = nil, promotionCode: String? = nil, reservationId: String? = nil, serviceInfo: GetServiceInfoResponse? = nil, status: String? = nil, signupInfo: AccountSignupInfoRequest? = nil) {
        self.init()
        self.mainNumber = `mainNumber`
        self.operator = `operator`
        self.partnerId = `partnerId`
        self.promotionCode = `promotionCode`
        self.reservationId = `reservationId`
        self.serviceInfo = `serviceInfo`
        self.status = `status`
        self.signupInfo = `signupInfo`
    }
    open func mapping(map: Map) {
        `mainNumber` <- map["mainNumber"]
        `operator` <- map["operator"]
        `partnerId` <- map["partnerId"]
        `promotionCode` <- map["promotionCode"]
        `reservationId` <- map["reservationId"]
        `serviceInfo` <- map["serviceInfo"]
        `status` <- map["status"]
        `signupInfo` <- map["signupInfo"]
    }
}
