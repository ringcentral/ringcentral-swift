import Foundation
import ObjectMapper
open class CustomCompanyGreetingRequest: Mappable {
    /*
    Type of a greeting, specifying the case when the greeting is played. See Greeting Types = ['Introductory', 'Announcement', 'ConnectingMessage', 'ConnectingAudio', 'Voicemail', 'Unavailable', 'HoldMusic']
    */
    open var `type`: String?
    /*
    nformation on an answering rule that the greeting is applied to
    */
    open var `answeringRule`: CustomCompanyGreetingAnsweringRuleInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, answeringRule: CustomCompanyGreetingAnsweringRuleInfo? = nil) {
        self.init()
        self.type = `type`
        self.answeringRule = `answeringRule`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `answeringRule` <- map["answeringRule"]
    }
}
