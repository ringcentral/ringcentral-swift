import Foundation
import ObjectMapper
open class RecordingInfo: Mappable {
    /*
    Internal identifier of the call recording
    */
    open var `id`: String?
    /*
    Link to the call recording metadata resource
    */
    open var `uri`: String?
    /*
    Indicates recording mode used
    */
    open var `type`: String?
    /*
    Link to the call recording binary content
    */
    open var `contentUri`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, type: String? = nil, contentUri: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.type = `type`
        self.contentUri = `contentUri`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `type` <- map["type"]
        `contentUri` <- map["contentUri"]
    }
}
