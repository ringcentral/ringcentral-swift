import Foundation
import ObjectMapper
open class CustomCompanyGreetingInfo: Mappable {
    /*
    Link to an extension custom greeting
    */
    open var `uri`: String?
    /*
    Internal identifier of an answering rule
    */
    open var `id`: String?
    /*
    Type of a company greeting
    */
    open var `type`: String?
    /*
    Content media type in WAV/MP3 format
    */
    open var `contentType`: String?
    /*
    Link to a greeting content (audio file)
    */
    open var `contentUri`: String?
    /*
    Information on an answering rule that the greeting is applied to
    */
    open var `answeringRule`: CustomGreetingAnsweringRuleInfo?
    /*
    Information on a greeting language. Supported for types 'StopRecording', 'StartRecording', 'AutomaticRecording'
    */
    open var `language`: CustomCompanyGreetingLanguageInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, type: String? = nil, contentType: String? = nil, contentUri: String? = nil, answeringRule: CustomGreetingAnsweringRuleInfo? = nil, language: CustomCompanyGreetingLanguageInfo? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.type = `type`
        self.contentType = `contentType`
        self.contentUri = `contentUri`
        self.answeringRule = `answeringRule`
        self.language = `language`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
        `contentType` <- map["contentType"]
        `contentUri` <- map["contentUri"]
        `answeringRule` <- map["answeringRule"]
        `language` <- map["language"]
    }
}
