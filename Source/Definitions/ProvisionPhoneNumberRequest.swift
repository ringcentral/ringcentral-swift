import Foundation
import ObjectMapper
open class ProvisionPhoneNumberRequest: Mappable {
    /*
    Information on extension which the phone number is added to, only for provisioning extension-level numbers
    */
    open var `extensionId`: ExtensionInfoProvisionPhoneNumbers?
    /*
    Phone number to purchase returned in E.164 (11-digits) format
    */
    open var `phoneNumber`: String?
    /*
    Internal identifier of phone number reservation; encoded data including reservation type (by brand, by account, by session), particular brand/account/session data, and reservation date and time
    */
    open var `reservationId`: String?
    /*
    Custom user name of a phone number, if any. Supported for numbers assigned to Auto-Receptionist, with usage type 'CompanyNumber
    */
    open var `label`: String?
    /*
    Usage type of a phone number. The default value is 'DirectNumber'
    */
    open var `usageType`: String?
    /*
    Type of a phone number
    */
    open var `type`: String?
    /*
    Vanity pattern that was used to find this number. It should be passed as if it was returned from the Number Lookup call
    */
    open var `vanityPattern`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extensionId: ExtensionInfoProvisionPhoneNumbers? = nil, phoneNumber: String? = nil, reservationId: String? = nil, label: String? = nil, usageType: String? = nil, type: String? = nil, vanityPattern: String? = nil) {
        self.init()
        self.extensionId = `extensionId`
        self.phoneNumber = `phoneNumber`
        self.reservationId = `reservationId`
        self.label = `label`
        self.usageType = `usageType`
        self.type = `type`
        self.vanityPattern = `vanityPattern`
    }
    open func mapping(map: Map) {
        `extensionId` <- map["extensionId"]
        `phoneNumber` <- map["phoneNumber"]
        `reservationId` <- map["reservationId"]
        `label` <- map["label"]
        `usageType` <- map["usageType"]
        `type` <- map["type"]
        `vanityPattern` <- map["vanityPattern"]
    }
}
