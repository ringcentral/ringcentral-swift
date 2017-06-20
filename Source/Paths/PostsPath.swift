import Foundation
import ObjectMapper
import Alamofire
open class PostsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "posts"
        }
    }
    // Create Post
    open func post(callback: @escaping (_ t: GlipPostInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GlipPostInfo?, error) in
            callback(t, error)
        }
    }
    // Create Post
    open func post(parameters: Parameters, callback: @escaping (_ t: GlipPostInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GlipPostInfo?, error) in
            callback(t, error)
        }
    }
    // Create Post
    open func post(parameters: PostParameters, callback: @escaping (_ t: GlipPostInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        // Internal identifier of a group to send post to
        open var `groupId`: String?
        // Text of a post, the maximum is 10000 characters
        open var `text`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(groupId: String? = nil, text: String? = nil) {
            self.init()
            self.groupId = `groupId`
            self.text = `text`
        }
        open func mapping(map: Map) {
            `groupId` <- map["groupId"]
            `text` <- map["text"]
        }
    }
    // Get Posts
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Posts
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Posts
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        // Identifier of a group to filter posts
        open var `groupId`: String?
        // Token of a page to be returned, see Glip Navigation Info
        open var `pageToken`: String?
        // Max numbers of records to be returned. The default/maximum value is 250
        open var `recordCount`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(groupId: String? = nil, pageToken: String? = nil, recordCount: Int? = nil) {
            self.init()
            self.groupId = `groupId`
            self.pageToken = `pageToken`
            self.recordCount = `recordCount`
        }
        open func mapping(map: Map) {
            `groupId` <- map["groupId"]
            `pageToken` <- map["pageToken"]
            `recordCount` <- map["recordCount"]
        }
    }
    open class ListResponse: Mappable {
        // List of posts
        open var `records`: [GlipPostInfo]?
        // Information on navigation
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
}
