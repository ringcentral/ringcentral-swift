import Foundation
import ObjectMapper
import Alamofire
open class PostsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "posts"
        }
    }
    /*
    Returns posts which are available for the current user (by group ID). The maximum number of posts returned is 250.
    */
    open func list(callback: @escaping (_ t: GlipPosts?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GlipPosts?, error) in
            callback(t, error)
        }
    }
    /*
    Returns posts which are available for the current user (by group ID). The maximum number of posts returned is 250.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GlipPosts?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GlipPosts?, error) in
            callback(t, error)
        }
    }
    /*
    Returns posts which are available for the current user (by group ID). The maximum number of posts returned is 250.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GlipPosts?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Max number of records to be returned
        */
        open var `recordCount`: Int?
        /*
        Pagination token
        */
        open var `pageToken`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(recordCount: Int? = nil, pageToken: String? = nil) {
            self.init()
            self.recordCount = `recordCount`
            self.pageToken = `pageToken`
        }
        open func mapping(map: Map) {
            `recordCount` <- map["recordCount"]
            `pageToken` <- map["pageToken"]
        }
    }
    /*
    Creates a new post in a group specified.
    */
    open func post(callback: @escaping (_ t: GlipPostInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GlipPostInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a new post in a group specified.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: GlipPostInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GlipPostInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a new post in a group specified.
    */
    open func post(parameters: GlipCreatePost, callback: @escaping (_ t: GlipPostInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
