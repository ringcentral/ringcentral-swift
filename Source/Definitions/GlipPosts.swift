import Foundation
import ObjectMapper
open class GlipPosts: Mappable {
    /*
    List of posts
    */
    open var `records`: [GlipPostInfo]?
    /*
    */
    open var `navigation`: GlipNavigationInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(records: [GlipPostInfo]? = nil, navigation: GlipNavigationInfo? = nil) {
        self.init()
        self.records = `records`
        self.navigation = `navigation`
    }
    open func mapping(map: Map) {
        `records` <- map["records"]
        `navigation` <- map["navigation"]
    }
}
