import Foundation
import ObjectMapper
open class CustomDataResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `value`: String?
    /*
    */
    open var `lastModifiedTime`: String?
    /*
    */
    open var `attachment`: AttachmentInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, value: String? = nil, lastModifiedTime: String? = nil, attachment: AttachmentInfo? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.value = `value`
        self.lastModifiedTime = `lastModifiedTime`
        self.attachment = `attachment`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `value` <- map["value"]
        `lastModifiedTime` <- map["lastModifiedTime"]
        `attachment` <- map["attachment"]
    }
}
