import Foundation
import ObjectMapper
open class SessionResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `accountId`: String?
    /*
    */
    open var `extensionId`: String?
    /*
    */
    open var `creationTime`: String?
    /*
    */
    open var `clientId`: String?
    /*
    */
    open var `application`: ApplicationResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, accountId: String? = nil, extensionId: String? = nil, creationTime: String? = nil, clientId: String? = nil, application: ApplicationResource? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.accountId = `accountId`
        self.extensionId = `extensionId`
        self.creationTime = `creationTime`
        self.clientId = `clientId`
        self.application = `application`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `accountId` <- map["accountId"]
        `extensionId` <- map["extensionId"]
        `creationTime` <- map["creationTime"]
        `clientId` <- map["clientId"]
        `application` <- map["application"]
    }
}
