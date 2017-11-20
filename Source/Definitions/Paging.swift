import Foundation
import ObjectMapper
open class Paging: Mappable {
    /*
    */
    open var `page`: Int?
    /*
    */
    open var `totalPages`: Int?
    /*
    */
    open var `perPage`: Int?
    /*
    */
    open var `totalElements`: Int?
    /*
    */
    open var `pageStart`: Int?
    /*
    */
    open var `pageEnd`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(page: Int? = nil, totalPages: Int? = nil, perPage: Int? = nil, totalElements: Int? = nil, pageStart: Int? = nil, pageEnd: Int? = nil) {
        self.init()
        self.page = `page`
        self.totalPages = `totalPages`
        self.perPage = `perPage`
        self.totalElements = `totalElements`
        self.pageStart = `pageStart`
        self.pageEnd = `pageEnd`
    }
    open func mapping(map: Map) {
        `page` <- map["page"]
        `totalPages` <- map["totalPages"]
        `perPage` <- map["perPage"]
        `totalElements` <- map["totalElements"]
        `pageStart` <- map["pageStart"]
        `pageEnd` <- map["pageEnd"]
    }
}
