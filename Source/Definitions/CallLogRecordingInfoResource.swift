import Foundation
import ObjectMapper
open class CallLogRecordingInfoResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `contentUri`: String?
    /*
    */
    open var `contentType`: String?
    /*
    */
    open var `duration`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, contentUri: String? = nil, contentType: String? = nil, duration: Int? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.contentUri = `contentUri`
        self.contentType = `contentType`
        self.duration = `duration`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `contentUri` <- map["contentUri"]
        `contentType` <- map["contentType"]
        `duration` <- map["duration"]
    }
}
