import Foundation
import ObjectMapper
open class TemplateInfo: Mappable {
    /*
    Link to a template
    */
    open var `uri`: String?
    /*
    Internal identifier of a template
    */
    open var `id`: String?
    /*
    */
    open var `type`: String?
    /*
    Name of a template
    */
    open var `name`: String?
    /*
    Time of a template creation
    */
    open var `creationTime`: String?
    /*
    Time of the last template modification
    */
    open var `lastModifiedTime`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, type: String? = nil, name: String? = nil, creationTime: String? = nil, lastModifiedTime: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.type = `type`
        self.name = `name`
        self.creationTime = `creationTime`
        self.lastModifiedTime = `lastModifiedTime`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
        `name` <- map["name"]
        `creationTime` <- map["creationTime"]
        `lastModifiedTime` <- map["lastModifiedTime"]
    }
}
