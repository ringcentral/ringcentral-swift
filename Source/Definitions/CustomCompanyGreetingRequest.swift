import Foundation
import ObjectMapper
open class CustomCompanyGreetingRequest: Mappable {
    /*
    Type of a greeting
    */
    open var `type`: String?
    /*
    Information on an answering rule that the greeting is applied to
    */
    open var `answeringRule`: CustomCompanyGreetingAnsweringRuleInfo?
    /*
    Information on a greeting language. Supported for types 'StopRecording', 'StartRecording', 'AutomaticRecording'
    */
    open var `language`: CustomCompanyGreetingLanguageInfoRequest?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, answeringRule: CustomCompanyGreetingAnsweringRuleInfo? = nil, language: CustomCompanyGreetingLanguageInfoRequest? = nil) {
        self.init()
        self.type = `type`
        self.answeringRule = `answeringRule`
        self.language = `language`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `answeringRule` <- map["answeringRule"]
        `language` <- map["language"]
    }
}
