import Foundation
import ObjectMapper
open class NavigationInfo: Mappable {
    /*
    Canonical URI for the first page of the list
    */
    open var `firstPage`: String?
    /*
    Canonical URI for the next page of the list
    */
    open var `nextPage`: String?
    /*
    Canonical URI for the previous page of the list
    */
    open var `previousPage`: String?
    /*
    Canonical URI for the last page of the list
    */
    open var `lastPage`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(firstPage: String? = nil, nextPage: String? = nil, previousPage: String? = nil, lastPage: String? = nil) {
        self.init()
        self.firstPage = `firstPage`
        self.nextPage = `nextPage`
        self.previousPage = `previousPage`
        self.lastPage = `lastPage`
    }
    open func mapping(map: Map) {
        `firstPage` <- map["firstPage"]
        `nextPage` <- map["nextPage"]
        `previousPage` <- map["previousPage"]
        `lastPage` <- map["lastPage"]
    }
}
