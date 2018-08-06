import Foundation
import ObjectMapper
open class Meta: Mappable {
    /*
    */
    open var `created`: String?
    /*
    */
    open var `lastModified`: String?
    /*
    resource location URI
    */
    open var `location`: String?
    /*
    */
    open var `resourceType`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(created: String? = nil, lastModified: String? = nil, location: String? = nil, resourceType: String? = nil) {
        self.init()
        self.created = `created`
        self.lastModified = `lastModified`
        self.location = `location`
        self.resourceType = `resourceType`
    }
    open func mapping(map: Map) {
        `created` <- map["created"]
        `lastModified` <- map["lastModified"]
        `location` <- map["location"]
        `resourceType` <- map["resourceType"]
    }
}
