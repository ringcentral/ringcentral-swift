import Foundation
import ObjectMapper
open class GetMonitoredExtensionsResponse: Mappable {
    /*
    Canonical URI of the monitored lines (extensions) resource
    */
    open var `uri`: String?
    /*
    List of lines (extensions) the presence of which is monitored by the user. The first two lines always indicate the user's extension presence, they cannot be changed
    */
    open var `records`: [LineInfo]?
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
    convenience public init(uri: String? = nil, records: [LineInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
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
