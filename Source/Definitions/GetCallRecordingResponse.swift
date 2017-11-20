import Foundation
import ObjectMapper
open class GetCallRecordingResponse: Mappable {
    /*
    Internal identifier of the call recording
    */
    open var `id`: String?
    /*
    Link to the call recording binary content
    */
    open var `contentUri`: String?
    /*
    Call recording file format. Supported format is audio/x-wav
    */
    open var `contentType`: String?
    /*
    Recorded call duration
    */
    open var `duration`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, contentUri: String? = nil, contentType: String? = nil, duration: Int? = nil) {
        self.init()
        self.id = `id`
        self.contentUri = `contentUri`
        self.contentType = `contentType`
        self.duration = `duration`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `contentUri` <- map["contentUri"]
        `contentType` <- map["contentType"]
        `duration` <- map["duration"]
    }
}
