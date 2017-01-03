import Foundation
import ObjectMapper
open class MessageAttachmentInfo: Definition {
    // Internal identifier of a message attachment
    open var `id`: String?
    // Canonical URI of a message attachment
    open var `uri`: String?
    // Type of message attachment
    open var `type`: String?
    // MIME type for a given attachment, for instance 'audio/wav'
    open var `contentType`: String?
    // Voicemail only Duration of the voicemail in seconds
    open var `vmDuration`: Int?
    convenience public init(id: String? = nil, uri: String? = nil, type: String? = nil, contentType: String? = nil, vmDuration: Int? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.type = `type`
        self.contentType = `contentType`
        self.vmDuration = `vmDuration`
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
        `contentType` <- map["contentType"]
        `vmDuration` <- map["vmDuration"]
    }
}
