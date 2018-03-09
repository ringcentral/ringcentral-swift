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
    Internal identifier of an answering rule
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
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, type: String? = nil, contentType: String? = nil, contentUri: String? = nil, answeringRule: CustomGreetingAnsweringRuleInfo? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.type = `type`
        self.contentType = `contentType`
        self.contentUri = `contentUri`
        self.answeringRule = `answeringRule`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
        `contentType` <- map["contentType"]
        `contentUri` <- map["contentUri"]
        `answeringRule` <- map["answeringRule"]
    }
}
