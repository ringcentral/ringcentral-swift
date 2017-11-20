import Foundation
import ObjectMapper
open class FederationInfo: Mappable {
    /*
    Internal identifier of a federation
    */
    open var `id`: String?
    /*
    Name of a federation
    */
    open var `displayName`: String?
    /*
    Datetime of federation creation, in ISO 8601 format, for example 2016-03-10T18:07:52.534Z
    */
    open var `creationTime`: String?
    /*
    Datetime of the last change of federation composition, in ISO 8601 format, for example 2016-03-10T18:07:52.534Z
    */
    open var `lastModifiedTime`: String?
    /*
    List of countries which can be selected for a dialing plan
    */
    open var `accounts`: [FederationAccountInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, displayName: String? = nil, creationTime: String? = nil, lastModifiedTime: String? = nil, accounts: [FederationAccountInfo]? = nil) {
        self.init()
        self.id = `id`
        self.displayName = `displayName`
        self.creationTime = `creationTime`
        self.lastModifiedTime = `lastModifiedTime`
        self.accounts = `accounts`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `displayName` <- map["displayName"]
        `creationTime` <- map["creationTime"]
        `lastModifiedTime` <- map["lastModifiedTime"]
        `accounts` <- map["accounts"]
    }
}
