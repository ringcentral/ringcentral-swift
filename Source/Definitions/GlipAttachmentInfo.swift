import Foundation
import ObjectMapper
open class GlipAttachmentInfo: Mappable {
    /*
    Internal identifier of an attachment
    */
    open var `id`: String?
    /*
    Type of an attachment
    */
    open var `type`: String?
    /*
    Link to binary content
    */
    open var `contentUri`: String?
    /*
    Name of a file
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, type: String? = nil, contentUri: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.type = `type`
        self.contentUri = `contentUri`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
        `contentUri` <- map["contentUri"]
        `name` <- map["name"]
    }
}
