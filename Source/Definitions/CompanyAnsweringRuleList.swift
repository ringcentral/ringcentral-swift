import Foundation
import ObjectMapper
open class CompanyAnsweringRuleList: Mappable {
    /*
    Link to an answering rule resource
    */
    open var `uri`: String?
    /*
    List of company answering rules
    */
    open var `records`: [ListCompanyAnsweringRuleInfo]?
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
    convenience public init(uri: String? = nil, records: [ListCompanyAnsweringRuleInfo]? = nil, paging: PagingInfo? = nil, navigation: NavigationInfo? = nil) {
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
