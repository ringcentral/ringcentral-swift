import Foundation
import ObjectMapper
open class DirectoryResource: Mappable {
    /*
    */
    open var `paging`: Paging?
    /*
    */
    open var `records`: [ContactResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(paging: Paging? = nil, records: [ContactResource]? = nil) {
        self.init()
        self.paging = `paging`
        self.records = `records`
    }
    open func mapping(map: Map) {
        `paging` <- map["paging"]
        `records` <- map["records"]
    }
}
