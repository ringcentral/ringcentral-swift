import Foundation
import ObjectMapper
open class Navigation: Mappable {
    /*
    */
    open var `nextPage`: ResourceLink?
    /*
    */
    open var `previousPage`: ResourceLink?
    /*
    */
    open var `firstPage`: ResourceLink?
    /*
    */
    open var `lastPage`: ResourceLink?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(nextPage: ResourceLink? = nil, previousPage: ResourceLink? = nil, firstPage: ResourceLink? = nil, lastPage: ResourceLink? = nil) {
        self.init()
        self.nextPage = `nextPage`
        self.previousPage = `previousPage`
        self.firstPage = `firstPage`
        self.lastPage = `lastPage`
    }
    open func mapping(map: Map) {
        `nextPage` <- map["nextPage"]
        `previousPage` <- map["previousPage"]
        `firstPage` <- map["firstPage"]
        `lastPage` <- map["lastPage"]
    }
}
