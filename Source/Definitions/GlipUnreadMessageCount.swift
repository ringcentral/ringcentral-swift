import Foundation
import ObjectMapper
open class GlipUnreadMessageCount: Mappable {
    /*
    Total count of unread posts
    */
    open var `unreadPostsCount`: Int?
    /*
    'True' if message quantity exceeds the threshold (100 by default)
    */
    open var `tooManyUnreadPosts`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(unreadPostsCount: Int? = nil, tooManyUnreadPosts: Bool? = nil) {
        self.init()
        self.unreadPostsCount = `unreadPostsCount`
        self.tooManyUnreadPosts = `tooManyUnreadPosts`
    }
    open func mapping(map: Map) {
        `unreadPostsCount` <- map["unreadPostsCount"]
        `tooManyUnreadPosts` <- map["tooManyUnreadPosts"]
    }
}
