import Foundation
import ObjectMapper
open class UserSearchResponse: Mappable {
    /*
    user list
    */
    open var `Resources`: [UserResponse]?
    /*
    */
    open var `itemsPerPage`: Int?
    /*
    */
    open var `schemas`: [String]?
    /*
    */
    open var `startIndex`: Int?
    /*
    */
    open var `totalResults`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(Resources: [UserResponse]? = nil, itemsPerPage: Int? = nil, schemas: [String]? = nil, startIndex: Int? = nil, totalResults: Int? = nil) {
        self.init()
        self.Resources = `Resources`
        self.itemsPerPage = `itemsPerPage`
        self.schemas = `schemas`
        self.startIndex = `startIndex`
        self.totalResults = `totalResults`
    }
    open func mapping(map: Map) {
        `Resources` <- map["Resources"]
        `itemsPerPage` <- map["itemsPerPage"]
        `schemas` <- map["schemas"]
        `startIndex` <- map["startIndex"]
        `totalResults` <- map["totalResults"]
    }
}
