import Foundation
import ObjectMapper
open class ContactList: Mappable {
    /*
    List of personal contacts from the extension address book
    */
    open var `records`: [PersonalContactResource]?
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
    convenience public init(records: [PersonalContactResource]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
        self.init()
        self.records = `records`
        self.navigation = `navigation`
        self.paging = `paging`
    }
    open func mapping(map: Map) {
        `records` <- map["records"]
        `navigation` <- map["navigation"]
        `paging` <- map["paging"]
    }
}
