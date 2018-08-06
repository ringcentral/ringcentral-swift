import Foundation
import ObjectMapper
open class GlipGroupList: Mappable {
    /*
    List of groups/teams/private chats
    */
    open var `records`: [GlipGroupInfo]?
    /*
    */
    open var `navigation`: GlipNavigationInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(records: [GlipGroupInfo]? = nil, navigation: GlipNavigationInfo? = nil) {
        self.init()
        self.records = `records`
        self.navigation = `navigation`
    }
    open func mapping(map: Map) {
        `records` <- map["records"]
        `navigation` <- map["navigation"]
    }
}
