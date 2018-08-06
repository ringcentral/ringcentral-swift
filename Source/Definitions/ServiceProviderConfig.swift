import Foundation
import ObjectMapper
open class ServiceProviderConfig: Mappable {
    /*
    */
    open var `authenticationSchemes`: AuthenticationSchemes?
    /*
    */
    open var `bulk`: BulkSupported?
    /*
    */
    open var `changePassword`: Supported?
    /*
    */
    open var `etag`: Supported?
    /*
    */
    open var `filter`: FilterSupported?
    /*
    */
    open var `patch`: Supported?
    /*
    */
    open var `schemas`: [String]?
    /*
    */
    open var `sort`: Supported?
    /*
    */
    open var `xmlDataFormat`: Supported?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(authenticationSchemes: AuthenticationSchemes? = nil, bulk: BulkSupported? = nil, changePassword: Supported? = nil, etag: Supported? = nil, filter: FilterSupported? = nil, patch: Supported? = nil, schemas: [String]? = nil, sort: Supported? = nil, xmlDataFormat: Supported? = nil) {
        self.init()
        self.authenticationSchemes = `authenticationSchemes`
        self.bulk = `bulk`
        self.changePassword = `changePassword`
        self.etag = `etag`
        self.filter = `filter`
        self.patch = `patch`
        self.schemas = `schemas`
        self.sort = `sort`
        self.xmlDataFormat = `xmlDataFormat`
    }
    open func mapping(map: Map) {
        `authenticationSchemes` <- map["authenticationSchemes"]
        `bulk` <- map["bulk"]
        `changePassword` <- map["changePassword"]
        `etag` <- map["etag"]
        `filter` <- map["filter"]
        `patch` <- map["patch"]
        `schemas` <- map["schemas"]
        `sort` <- map["sort"]
        `xmlDataFormat` <- map["xmlDataFormat"]
    }
}
