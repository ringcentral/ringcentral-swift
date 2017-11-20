import Foundation
import ObjectMapper
import Alamofire
open class ProfilePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "profile"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.30 (Release 9.1)</p><p>Returns Glip unread message count.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GlipUnreadMessageCount?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GlipUnreadMessageCount?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.30 (Release 9.1)</p><p>Returns Glip unread message count.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func get(parameters: Parameters, callback: @escaping (_ t: GlipUnreadMessageCount?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: GlipUnreadMessageCount?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.30 (Release 9.1)</p><p>Returns Glip unread message count.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func get(parameters: GetParameters, callback: @escaping (_ t: GlipUnreadMessageCount?, _ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        /*
        List of attributes to be returned. To return unread message count 'unreadPostsCount' and 'tooManyUnreadPosts' should be specified
        */
        open var `fields`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(fields: String? = nil) {
            self.init()
            self.fields = `fields`
        }
        open func mapping(map: Map) {
            `fields` <- map["fields"]
        }
    }
}
