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
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Returns the list of groups associated with the user.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func list(callback: @escaping (_ t: GlipGroupList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GlipGroupList?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Returns the list of groups associated with the user.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GlipGroupList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GlipGroupList?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Returns the list of groups associated with the user.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GlipGroupList?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Type of a group. 'PrivateChat' is a group of 2 members. 'Group' is a chat of 2 and more participants, the membership cannot be changed after group creation. 'Team' is a chat of 1 and more participants, the membership can be modified in future
        */
        open var `type`: [String]?
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
        convenience public init(type: [String]? = nil, pageToken: String? = nil, recordCount: Int? = nil) {
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
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Creates a group.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func post(callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Creates a group.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Creates a group.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func post(parameters: GlipCreateGroup, callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Returns a group or few groups by ID(s). Batch request is supported.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
}
