import Foundation
import ObjectMapper
open class NavigationInfo: Mappable {
    /*
    Canonical URI for the first page of the list
    */
    open var `firstPage`: NavigationInfoURI?
    /*
    Canonical URI for the next page of the list
    */
    open var `nextPage`: NavigationInfoURI?
    /*
    Canonical URI for the previous page of the list
    */
    open var `previousPage`: NavigationInfoURI?
    /*
    Canonical URI for the last page of the list
    */
    open var `lastPage`: NavigationInfoURI?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(firstPage: NavigationInfoURI? = nil, nextPage: NavigationInfoURI? = nil, previousPage: NavigationInfoURI? = nil, lastPage: NavigationInfoURI? = nil) {
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
