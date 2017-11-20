import Foundation
import ObjectMapper
open class MetaInfo: Mappable {
    /*
    Specification links
    */
    open var `schemas`: [String]?
    /*
    User type
    */
    open var `resourceType`: String?
    /*
    Datetime of user creation in ISO 8601 format, for example 2016-03-10T18:07:52.534Z
    */
    open var `created`: String?
    /*
    Datetime of the last change of user information in ISO 8601 format,for example 2016-03-10T18:07:52.534Z
    */
    open var `lastModified`: String?
    /*
    User location
    */
    open var `location`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(schemas: [String]? = nil, resourceType: String? = nil, created: String? = nil, lastModified: String? = nil, location: String? = nil) {
        self.init()
        self.schemas = `schemas`
        self.resourceType = `resourceType`
        self.created = `created`
        self.lastModified = `lastModified`
        self.location = `location`
    }
    open func mapping(map: Map) {
        `schemas` <- map["schemas"]
        `resourceType` <- map["resourceType"]
        `created` <- map["created"]
        `lastModified` <- map["lastModified"]
        `location` <- map["location"]
    }
}
