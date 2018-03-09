import Foundation
import ObjectMapper
open class PromptInfo: Mappable {
    /*
    Internal identifier of a prompt
    */
    open var `uri`: String?
    /*
    Link to a prompt metadata
    */
    open var `id`: String?
    /*
    Type of a prompt media content
    */
    open var `contentType`: String?
    /*
    Link to a prompt media content
    */
    open var `contentUri`: String?
    /*
    Name of a prompt
    */
    open var `filename`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, contentType: String? = nil, contentUri: String? = nil, filename: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.contentType = `contentType`
        self.contentUri = `contentUri`
        self.filename = `filename`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `contentType` <- map["contentType"]
        `contentUri` <- map["contentUri"]
        `filename` <- map["filename"]
    }
}
