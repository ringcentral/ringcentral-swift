import Foundation
import ObjectMapper
open class OutboundFaxesInfo: Mappable {
    /*
    Email notification flag
    */
    open var `notifyByEmail`: Bool?
    /*
    SMS notification flag
    */
    open var `notifyBySms`: Bool?
    /*
    List of recipient email addresses for outbound fax notifications. Returned if specified, in both modes (advanced/basic). Applied in advanced mode only
    */
    open var `advancedEmailAddresses`: [String]?
    /*
    List of recipient phone numbers for outbound fax notifications. Returned if specified, in both modes (advanced/basic). Applied in advanced mode only
    */
    open var `advancedSmsEmailAddresses`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(notifyByEmail: Bool? = nil, notifyBySms: Bool? = nil, advancedEmailAddresses: [String]? = nil, advancedSmsEmailAddresses: [String]? = nil) {
        self.init()
        self.notifyByEmail = `notifyByEmail`
        self.notifyBySms = `notifyBySms`
        self.advancedEmailAddresses = `advancedEmailAddresses`
        self.advancedSmsEmailAddresses = `advancedSmsEmailAddresses`
    }
    open func mapping(map: Map) {
        `notifyByEmail` <- map["notifyByEmail"]
        `notifyBySms` <- map["notifyBySms"]
        `advancedEmailAddresses` <- map["advancedEmailAddresses"]
        `advancedSmsEmailAddresses` <- map["advancedSmsEmailAddresses"]
    }
}
