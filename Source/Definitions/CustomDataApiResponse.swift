import Foundation
import ObjectMapper
open class CustomDataApiResponse: Mappable {
    /*
    Custom data access key
    */
    open var `id`: String?
    /*
    Link to the custom data
    */
    open var `uri`: String?
    /*
    Description of custom data
    */
    open var `value`: String?
    /*
    Time of the last change in custom data
    */
    open var `lastModifiedTime`: String?
    /*
    Attachment data: link and type
    */
    open var `attachment`: CustomDataAttachmentInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, value: String? = nil, lastModifiedTime: String? = nil, attachment: CustomDataAttachmentInfo? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.value = `value`
        self.lastModifiedTime = `lastModifiedTime`
        self.attachment = `attachment`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `value` <- map["value"]
        `lastModifiedTime` <- map["lastModifiedTime"]
        `attachment` <- map["attachment"]
    }
}
