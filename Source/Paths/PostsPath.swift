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
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Returns list of posts.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func list(callback: @escaping (_ t: GlipPosts?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GlipPosts?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Returns list of posts.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GlipPosts?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GlipPosts?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Returns list of posts.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GlipPosts?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Identifier of a group to filter posts
        */
        open var `groupId`: String?
        /*
        Token of a page to be returned, see Glip Navigation Info
        */
        open var `pageToken`: String?
        /*
        Max numbers of records to be returned. The default/maximum value is 250
        */
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
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Creates a post.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func post(callback: @escaping (_ t: GlipPostInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GlipPostInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Creates a post.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: GlipPostInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GlipPostInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Creates a post.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func post(parameters: GlipCreatePost, callback: @escaping (_ t: GlipPostInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
