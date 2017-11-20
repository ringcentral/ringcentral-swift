import Foundation
import ObjectMapper
open class CompanyDirectoryContacts: Mappable {
    /*
    List of countries which can be selected for a dialing plan
    */
    open var `records`: [CompanyDirectoryContactInfo]?
    /*
    Information on paging
    */
    open var `paging`: PagingInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(records: [CompanyDirectoryContactInfo]? = nil, paging: PagingInfo? = nil) {
        self.init()
        self.records = `records`
        self.paging = `paging`
    }
    open func mapping(map: Map) {
        `records` <- map["records"]
        `paging` <- map["paging"]
    }
}
