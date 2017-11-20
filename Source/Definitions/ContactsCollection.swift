import Foundation
import ObjectMapper
open class ContactsCollection: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `records`: [PersonalContactResource]?
    /*
    */
    open var `paging`: Paging?
    /*
    */
    open var `navigation`: Navigation?
    /*
    */
    open var `groups`: ResourceLink?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, records: [PersonalContactResource]? = nil, paging: Paging? = nil, navigation: Navigation? = nil, groups: ResourceLink? = nil) {
        self.init()
        self.uri = `uri`
        self.records = `records`
        self.paging = `paging`
        self.navigation = `navigation`
        self.groups = `groups`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `records` <- map["records"]
        `paging` <- map["paging"]
        `navigation` <- map["navigation"]
        `groups` <- map["groups"]
    }
}
