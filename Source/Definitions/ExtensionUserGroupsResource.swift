import Foundation
import ObjectMapper
open class ExtensionUserGroupsResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `groups`: [UserGroupIdResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, groups: [UserGroupIdResource]? = nil) {
        self.init()
        self.uri = `uri`
        self.groups = `groups`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `groups` <- map["groups"]
    }
}
