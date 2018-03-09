import Foundation
import ObjectMapper
open class LanguageList: Mappable {
    /*
    Canonical URI of the language list resource
    */
    open var `uri`: String?
    /*
    Language data
    */
    open var `records`: [LanguageInfo]?
    /*
    Information on navigation
    */
    open var `navigation`: NavigationInfo?
    /*
    Information on paging
    */
    open var `paging`: PagingInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, records: [LanguageInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
        self.init()
        self.uri = `uri`
        self.records = `records`
        self.navigation = `navigation`
        self.paging = `paging`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `records` <- map["records"]
        `navigation` <- map["navigation"]
        `paging` <- map["paging"]
    }
}
