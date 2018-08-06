import Foundation
import ObjectMapper
open class AutomaticRecordingResource: Mappable {
    /*
    Flag for controling Automatic Call Recording settings
    */
    open var `enabled`: Bool?
    /*
    Flag for controlling 'Play Call Recording Announcement for Outbound Calls' settings
    */
    open var `outboundCallTones`: Bool?
    /*
    Flag for controlling 'Play periodic tones for outbound calls' settings
    */
    open var `outboundCallAnnouncement`: Bool?
    /*
    Flag for controlling 'Allow mute in auto call recording' settings
    */
    open var `allowMute`: Bool?
    /*
    Total amount of extension that are used in call recordings
    */
    open var `extensionCount`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(enabled: Bool? = nil, outboundCallTones: Bool? = nil, outboundCallAnnouncement: Bool? = nil, allowMute: Bool? = nil, extensionCount: Int? = nil) {
        self.init()
        self.enabled = `enabled`
        self.outboundCallTones = `outboundCallTones`
        self.outboundCallAnnouncement = `outboundCallAnnouncement`
        self.allowMute = `allowMute`
        self.extensionCount = `extensionCount`
    }
    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
        `outboundCallTones` <- map["outboundCallTones"]
        `outboundCallAnnouncement` <- map["outboundCallAnnouncement"]
        `allowMute` <- map["allowMute"]
        `extensionCount` <- map["extensionCount"]
    }
}
