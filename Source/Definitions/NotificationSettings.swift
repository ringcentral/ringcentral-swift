import Foundation
import ObjectMapper
open class NotificationSettings: Mappable {
    /*
    Canonical URI of notifications settings resource
    */
    open var `uri`: String?
    /*
    List of notification recipient email addresses
    */
    open var `emailAddresses`: [String]?
    /*
    List of notification recipient email addresses
    */
    open var `smsEmailAddresses`: [String]?
    /*
    Specifies notifications settings mode. If 'True' then advanced mode is on, it allows using different emails and/or phone numbers for each notification type. If 'False' then basic mode is on. Advanced mode settings are returned in both modes, if specified once, but if basic mode is switched on, they are not applied
    */
    open var `advancedMode`: Bool?
    /*
    */
    open var `voicemails`: VoicemailsInfo?
    /*
    */
    open var `inboundFaxes`: InboundFaxesInfo?
    /*
    */
    open var `outboundFaxes`: OutboundFaxesInfo?
    /*
    */
    open var `inboundTexts`: InboundTextsInfo?
    /*
    */
    open var `missedCalls`: MissedCallsInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, emailAddresses: [String]? = nil, smsEmailAddresses: [String]? = nil, advancedMode: Bool? = nil, voicemails: VoicemailsInfo? = nil, inboundFaxes: InboundFaxesInfo? = nil, outboundFaxes: OutboundFaxesInfo? = nil, inboundTexts: InboundTextsInfo? = nil, missedCalls: MissedCallsInfo? = nil) {
        self.init()
        self.uri = `uri`
        self.emailAddresses = `emailAddresses`
        self.smsEmailAddresses = `smsEmailAddresses`
        self.advancedMode = `advancedMode`
        self.voicemails = `voicemails`
        self.inboundFaxes = `inboundFaxes`
        self.outboundFaxes = `outboundFaxes`
        self.inboundTexts = `inboundTexts`
        self.missedCalls = `missedCalls`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `emailAddresses` <- map["emailAddresses"]
        `smsEmailAddresses` <- map["smsEmailAddresses"]
        `advancedMode` <- map["advancedMode"]
        `voicemails` <- map["voicemails"]
        `inboundFaxes` <- map["inboundFaxes"]
        `outboundFaxes` <- map["outboundFaxes"]
        `inboundTexts` <- map["inboundTexts"]
        `missedCalls` <- map["missedCalls"]
    }
}
