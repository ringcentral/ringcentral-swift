import Foundation
import ObjectMapper
open class NavigationInfo: Mappable {
    /*
    First page of the list
    */
    open var `firstPage`: Page?
    /*
    Next page of the list
    */
    open var `nextPage`: Page?
    /*
    Previous page of the list
    */
    open var `previousPage`: Page?
    /*
    Last page of the list
    */
    open var `lastPage`: Page?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(firstPage: Page? = nil, nextPage: Page? = nil, previousPage: Page? = nil, lastPage: Page? = nil) {
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
