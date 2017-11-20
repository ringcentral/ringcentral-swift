import Foundation
import ObjectMapper
open class PostGlipFile: Mappable {
    /*
    Internal identifier of a file
    */
    open var `id`: String?
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
    convenience public init(id: String? = nil, contentUri: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.contentUri = `contentUri`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `contentUri` <- map["contentUri"]
        `name` <- map["name"]
    }
}
