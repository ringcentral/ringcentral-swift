import Foundation
import ObjectMapper
open class AttachmentInfo: Mappable {
    // Link to custom data attachment
    open var `uri`: String?
    // Type of custom data attachment, see also MIME Types
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
