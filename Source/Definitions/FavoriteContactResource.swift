import Foundation
import ObjectMapper
open class FavoriteContactResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `extensionId`: String?
    /*
    */
    open var `contactId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, extensionId: String? = nil, contactId: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.extensionId = `extensionId`
        self.contactId = `contactId`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `extensionId` <- (map["extensionId"], StringTransform())
        `contactId` <- map["contactId"]
    }
}
