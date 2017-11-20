import Foundation
import ObjectMapper
open class VoicemailsInfo: Mappable {
    /*
    Email notification flag
    */
    open var `notifyByEmail`: Bool?
    /*
    SMS notification flag
    */
    open var `notifyBySms`: Bool?
    /*
    List of recipient email addresses for voicemail notifications. Returned if specified, in both modes (advanced/basic). Applied in advanced mode only
    */
    open var `advancedEmailAddresses`: [String]?
    /*
    List of recipient phone numbers for voicemail notifications. Returned if specified, in both modes (advanced/basic). Applied in advanced mode only
    */
    open var `advancedSmsEmailAddresses`: [String]?
    /*
    Indicates whether voicemail should be attached to email
    */
    open var `includeAttachment`: Bool?
    /*
    Indicates whether email should be automatically marked as read
    */
    open var `markAsRead`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(notifyByEmail: Bool? = nil, notifyBySms: Bool? = nil, advancedEmailAddresses: [String]? = nil, advancedSmsEmailAddresses: [String]? = nil, includeAttachment: Bool? = nil, markAsRead: Bool? = nil) {
        self.init()
        self.notifyByEmail = `notifyByEmail`
        self.notifyBySms = `notifyBySms`
        self.advancedEmailAddresses = `advancedEmailAddresses`
        self.advancedSmsEmailAddresses = `advancedSmsEmailAddresses`
        self.includeAttachment = `includeAttachment`
        self.markAsRead = `markAsRead`
    }
    open func mapping(map: Map) {
        `notifyByEmail` <- map["notifyByEmail"]
        `notifyBySms` <- map["notifyBySms"]
        `advancedEmailAddresses` <- map["advancedEmailAddresses"]
        `advancedSmsEmailAddresses` <- map["advancedSmsEmailAddresses"]
        `includeAttachment` <- map["includeAttachment"]
        `markAsRead` <- map["markAsRead"]
    }
}
