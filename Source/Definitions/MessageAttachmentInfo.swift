import Foundation
import ObjectMapper
import Alamofire
open class MessageAttachmentInfo: Mappable {
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
    public init() {
    }
    convenience public init(id: String? = nil, uri: String? = nil, type: String? = nil, contentType: String? = nil, vmDuration: Int? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.type = `type`
        self.contentType = `contentType`
        self.vmDuration = `vmDuration`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `type` <- map["type"]
        `contentType` <- map["contentType"]
        `vmDuration` <- map["vmDuration"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
