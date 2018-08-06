import Foundation
import ObjectMapper
open class LicenseTypes: Mappable {
    /*
    Canonical URI of a license types resource
    */
    open var `uri`: String?
    /*
    List of supported licenses
    */
    open var `records`: [DictionaryLicenseInfo]?
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
    convenience public init(uri: String? = nil, records: [DictionaryLicenseInfo]? = nil, paging: PagingInfo? = nil, navigation: NavigationInfo? = nil) {
        self.init()
        self.uri = `uri`
        self.records = `records`
        self.paging = `paging`
        self.navigation = `navigation`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `records` <- map["records"]
        `paging` <- map["paging"]
        `navigation` <- map["navigation"]
    }
}
