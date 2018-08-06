import Foundation
import ObjectMapper
open class SearchRequest: Mappable {
    /*
    page size
    */
    open var `count`: Int?
    /*
    only support 'userName' or 'email' filter expressions for now
    */
    open var `filter`: String?
    /*
    */
    open var `schemas`: [String]?
    /*
    start index (1-based)
    */
    open var `startIndex`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(count: Int? = nil, filter: String? = nil, schemas: [String]? = nil, startIndex: Int? = nil) {
        self.init()
        self.count = `count`
        self.filter = `filter`
        self.schemas = `schemas`
        self.startIndex = `startIndex`
    }
    open func mapping(map: Map) {
        `count` <- map["count"]
        `filter` <- map["filter"]
        `schemas` <- map["schemas"]
        `startIndex` <- map["startIndex"]
    }
}
