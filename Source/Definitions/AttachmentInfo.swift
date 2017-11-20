import Foundation
import ObjectMapper
open class AttachmentInfo: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `contentType`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, contentType: String? = nil) {
        self.init()
        self.uri = `uri`
        self.contentType = `contentType`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `contentType` <- map["contentType"]
    }
}
