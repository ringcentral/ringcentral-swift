import Foundation
import ObjectMapper
open class GlipAttachmentInfoRequest: Mappable {
    /*
    Internal identifier of an attachment
    */
    open var `id`: String?
    /*
    Type of an attachment
    */
    open var `attachmentType`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, attachmentType: String? = nil) {
        self.init()
        self.id = `id`
        self.attachmentType = `attachmentType`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `attachmentType` <- map["attachmentType"]
    }
}
