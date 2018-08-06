import Foundation
import ObjectMapper
open class CompanyDirectoryPhoneNumberInfo: Mappable {
    /*
    Extension phone number in E.164 format
    */
    open var `phoneNumber`: String?
    /*
    Type of a phone number
    */
    open var `type`: String?
    /*
    Specifies if a phone number should be hidden or not. Returned only if the value is 'True'
    */
    open var `hidden`: Bool?
    /*
    Usage type of a phone number
    */
    open var `usageType`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, type: String? = nil, hidden: Bool? = nil, usageType: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.type = `type`
        self.hidden = `hidden`
        self.usageType = `usageType`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `type` <- map["type"]
        `hidden` <- map["hidden"]
        `usageType` <- map["usageType"]
    }
}
