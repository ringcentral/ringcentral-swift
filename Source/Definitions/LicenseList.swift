import Foundation
import ObjectMapper
open class LicenseList: Mappable {
    /*
    List of licenses
    */
    open var `records`: [LicenseInfo]?
    /*
    Information on paging
    */
    open var `paging`: PagingInfo?
    /*
    Information on navigation
    */
    open var `navigation`: NavigationInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(records: [LicenseInfo]? = nil, paging: PagingInfo? = nil, navigation: NavigationInfo? = nil) {
        self.init()
        self.records = `records`
        self.paging = `paging`
        self.navigation = `navigation`
    }
    open func mapping(map: Map) {
        `records` <- map["records"]
        `paging` <- map["paging"]
        `navigation` <- map["navigation"]
    }
}
