import Foundation
import ObjectMapper
import Alamofire
open class GroupsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "groups"
        }
    }
    open func `bulkAssign`() -> BulkAssignPath {
        return BulkAssignPath(parent: self)
    }
    open func `posts`() -> PostsPath {
        return PostsPath(parent: self)
    }
    open func `webhooks`(_ _id: String? = nil) -> WebhooksPath {
        return WebhooksPath(parent: self, _id: _id)
    }
    /*
    Returns the list of groups where the user is a member.
    */
    open func list(callback: @escaping (_ t: GlipGroupList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GlipGroupList?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the list of groups where the user is a member.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GlipGroupList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GlipGroupList?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the list of groups where the user is a member.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GlipGroupList?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Type of groups to be fetched (by default all type of groups will be fetched)
        */
        open var `type`: String?
        /*
        Max number of groups to be fetched by one request (Not more than 250).
        */
        open var `recordCount`: Double?
        /*
        Pagination token.
        */
        open var `pageToken`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(type: String? = nil, recordCount: Double? = nil, pageToken: String? = nil) {
            self.init()
            self.type = `type`
            self.recordCount = `recordCount`
            self.pageToken = `pageToken`
        }
        open func mapping(map: Map) {
            `type` <- map["type"]
            `recordCount` <- map["recordCount"]
            `pageToken` <- map["pageToken"]
        }
    }
    /*
    Creates a new private chat/team.
    */
    open func post(callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a new private chat/team.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a new private chat/team.
    */
    open func post(parameters: GlipCreateGroup, callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    Returns information about a group or multiple groups by their ID(s). Batch request is supported.
    */
    open func get(callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
}
