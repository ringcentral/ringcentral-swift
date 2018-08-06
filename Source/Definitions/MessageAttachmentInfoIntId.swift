import Foundation
import ObjectMapper
open class MessageAttachmentInfoIntId: Mappable {
    /*
    Internal identifier of a message attachment
    */
    open var `id`: Int?
    /*
    Canonical URI of a message attachment
    */
    open var `uri`: String?
    /*
    Type of message attachment
    */
    open var `type`: String?
    /*
    MIME type for a given attachment, for instance 'audio/wav'
    */
    open var `contentType`: String?
    /*
    Voicemail only Duration of the voicemail in seconds
    */
    open var `vmDuration`: Int?
    /*
    Name of a file attached
    */
    open var `filename`: String?
    /*
    Size of attachment in bytes
    */
    open var `size`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: Int? = nil, uri: String? = nil, type: String? = nil, contentType: String? = nil, vmDuration: Int? = nil, filename: String? = nil, size: Int? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.type = `type`
        self.contentType = `contentType`
        self.vmDuration = `vmDuration`
        self.filename = `filename`
        self.size = `size`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `type` <- map["type"]
        `contentType` <- map["contentType"]
        `vmDuration` <- map["vmDuration"]
        `filename` <- map["filename"]
        `size` <- map["size"]
    }
}
