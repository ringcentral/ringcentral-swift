import Foundation
import ObjectMapper
open class AttachmentInfo: Definition {
    // Link to custom data attachment
    open var `uri`: String?
    // Type of custom data attachment, see also MIME Types
    open var `contentType`: String?
    convenience public init(uri: String? = nil, contentType: String? = nil) {
        self.init()
        self.uri = `uri`
        self.contentType = `contentType`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `uri` <- map["uri"]
        `contentType` <- map["contentType"]
    }
}
