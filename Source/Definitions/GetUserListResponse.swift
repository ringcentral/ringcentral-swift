import Foundation
import ObjectMapper
open class GetUserListResponse: Mappable {
    /*
    Specification links
    */
    open var `schemas`: [String]?
    /*
    1-based index of query result
    */
    open var `startIndex`: Int?
    /*
    Results count
    */
    open var `totalResults`: Int?
    /*
    List of users with detailed info
    */
    open var `Resources`: [UserInfo]?
    /*
    Number of users displayed per page
    */
    open var `itemsPerPage`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(schemas: [String]? = nil, startIndex: Int? = nil, totalResults: Int? = nil, Resources: [UserInfo]? = nil, itemsPerPage: Int? = nil) {
        self.init()
        self.schemas = `schemas`
        self.startIndex = `startIndex`
        self.totalResults = `totalResults`
        self.Resources = `Resources`
        self.itemsPerPage = `itemsPerPage`
    }
    open func mapping(map: Map) {
        `schemas` <- map["schemas"]
        `startIndex` <- map["startIndex"]
        `totalResults` <- map["totalResults"]
        `Resources` <- map["Resources"]
        `itemsPerPage` <- map["itemsPerPage"]
    }
}
