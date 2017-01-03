import Foundation
import ObjectMapper
open class NavigationInfo: Definition {
    // First page of the list
    open var `firstPage`: Page?
    // Next page of the list
    open var `nextPage`: Page?
    // Previous page of the list
    open var `previousPage`: Page?
    // Last page of the list
    open var `lastPage`: Page?
    convenience public init(firstPage: Page? = nil, nextPage: Page? = nil, previousPage: Page? = nil, lastPage: Page? = nil) {
        self.init()
        self.firstPage = `firstPage`
        self.nextPage = `nextPage`
        self.previousPage = `previousPage`
        self.lastPage = `lastPage`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `firstPage` <- map["firstPage"]
        `nextPage` <- map["nextPage"]
        `previousPage` <- map["previousPage"]
        `lastPage` <- map["lastPage"]
    }
}
