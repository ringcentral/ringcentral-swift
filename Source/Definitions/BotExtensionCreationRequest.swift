import Foundation
import ObjectMapper
open class BotExtensionCreationRequest: Mappable {
    /*
    Bot name (equals to extension first name)
    */
    open var `name`: String?
    /*
    Key of a bot application
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
    convenience public init(name: String? = nil, applicationKey: String? = nil, creatorId: String? = nil) {
        self.init()
        self.name = `name`
        self.applicationKey = `applicationKey`
        self.creatorId = `creatorId`
    }
    open func mapping(map: Map) {
        `name` <- map["name"]
        `applicationKey` <- map["applicationKey"]
        `creatorId` <- map["creatorId"]
    }
}
