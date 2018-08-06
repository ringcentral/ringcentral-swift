import Foundation
import ObjectMapper
open class FederationResource: Mappable {
    /*
    */
    open var `accounts`: [FederatedAccountResource]?
    /*
    */
    open var `creationTime`: String?
    /*
    */
    open var `displayName`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `lastModifiedTime`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(accounts: [FederatedAccountResource]? = nil, creationTime: String? = nil, displayName: String? = nil, id: String? = nil, lastModifiedTime: String? = nil) {
        self.init()
        self.accounts = `accounts`
        self.creationTime = `creationTime`
        self.displayName = `displayName`
        self.id = `id`
        self.lastModifiedTime = `lastModifiedTime`
    }
    open func mapping(map: Map) {
        `accounts` <- map["accounts"]
        `creationTime` <- map["creationTime"]
        `displayName` <- map["displayName"]
        `id` <- (map["id"], StringTransform())
        `lastModifiedTime` <- map["lastModifiedTime"]
    }
}
