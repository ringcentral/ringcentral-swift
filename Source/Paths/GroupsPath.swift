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
    /*
    Returns list of groups.
    */
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns list of groups.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns list of groups.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Type of a group. 'PrivateChat' is a group of 2 members. 'Group' is a chat of 2 and more participants, the membership cannot be changed after group creation. 'Team' is a chat of 1 and more participants, the membership can be modified in future
        */
        open var `type`: String?
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
        convenience public init(type: String? = nil, pageToken: String? = nil, recordCount: Int? = nil) {
            self.init()
            self.type = `type`
            self.pageToken = `pageToken`
            self.recordCount = `recordCount`
        }
        open func mapping(map: Map) {
            `type` <- map["type"]
            `pageToken` <- map["pageToken"]
            `recordCount` <- map["recordCount"]
        }
    }
    open class ListResponse: Mappable {
        /*
        List of groups/teams/private chats
        */
        open var `records`: [GlipGroupInfo]?
        /*
        Information on navigation
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
    /*
    Creates a group.
    */
    open func post(callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a group.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a group.
    */
    open func post(parameters: PostParameters, callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        /*
        Type of a group to be created. 'PrivateChat' is a group of 2 members. 'Team' is a chat of 1 and more participants, the membership can be modified in future
        */
        open var `type`: String?
        /*
        For 'Team' group type only. Team access level
        */
        open var `isPublic`: Bool?
        /*
        For 'Team' group type only. Team name
        */
        open var `name`: String?
        /*
        For 'Team' group type only. Team description
        */
        open var `description`: String?
        /*
        Identifier(s) of group members. For 'PrivateChat' group type 2 members only are supported
        */
        open var `members`: [String]?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(type: String? = nil, isPublic: Bool? = nil, name: String? = nil, description: String? = nil, members: [String]? = nil) {
            self.init()
            self.type = `type`
            self.isPublic = `isPublic`
            self.name = `name`
            self.description = `description`
            self.members = `members`
        }
        open func mapping(map: Map) {
            `type` <- map["type"]
            `isPublic` <- map["isPublic"]
            `name` <- map["name"]
            `description` <- map["description"]
            `members` <- map["members"]
        }
    }
    /*
    Returns a group or few groups by ID(s). Batch request is supported.
    */
    open func get(callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
}
