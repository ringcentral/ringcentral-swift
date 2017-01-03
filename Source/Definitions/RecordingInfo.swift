import Foundation
import ObjectMapper
open class RecordingInfo: Definition {
    // Internal identifier of the call recording
    open var `id`: String?
    // Link to the call recording metadata resource
    open var `uri`: String?
    // Indicates recording mode used
    open var `type`: String?
    // Link to the call recording binary content
    open var `contentUri`: String?
    convenience public init(id: String? = nil, uri: String? = nil, type: String? = nil, contentUri: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.type = `type`
        self.contentUri = `contentUri`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `type` <- map["type"]
        `contentUri` <- map["contentUri"]
    }
}
