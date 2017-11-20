import Foundation
import ObjectMapper
open class BotExtensionCreation: Mappable {
    /*
    Link to a bot extension resource
    */
    open var `uri`: String?
    /*
    Internal identifier of a bot extension
    */
    open var `id`: String?
    /*
    Bot extension number
    */
    open var `extensionNumber`: String?
    /*
    Bot name (equals to extension first name)
    */
    open var `name`: String?
    /*
    Identifier key of a bot application
    */
    open var `applicationKey`: String?
    /*
    User extension identifier
    */
    open var `creatorId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, extensionNumber: String? = nil, name: String? = nil, applicationKey: String? = nil, creatorId: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.extensionNumber = `extensionNumber`
        self.name = `name`
        self.applicationKey = `applicationKey`
        self.creatorId = `creatorId`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `extensionNumber` <- map["extensionNumber"]
        `name` <- map["name"]
        `applicationKey` <- map["applicationKey"]
        `creatorId` <- map["creatorId"]
    }
}
