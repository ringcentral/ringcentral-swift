import Foundation
import ObjectMapper
open class GreetingInfo: Mappable {
    /*
    Type of a greeting, specifying the case when the greeting is played. See Greeting Types = ['Introductory', 'Announcement', 'ConnectingMessage', 'ConnectingAudio', 'Voicemail', 'Unavailable', 'InterruptPrompt', 'HoldMusic']
    */
    open var `type`: String?
    /*
    Usage type of a greeting, specifying if the greeting is applied to user extension or department extension = ['UserExtensionAnsweringRule', 'ExtensionAnsweringRule DepartmentExtensionAnsweringRule']
    */
    open var `usageType`: String?
    /*
    */
    open var `preset`: PresetInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, usageType: String? = nil, preset: PresetInfo? = nil) {
        self.init()
        self.type = `type`
        self.usageType = `usageType`
        self.preset = `preset`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `usageType` <- map["usageType"]
        `preset` <- map["preset"]
    }
}
