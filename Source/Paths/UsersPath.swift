import Foundation
import ObjectMapper
import Alamofire
open class UsersPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "Users"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Returns the list of users requested.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func get(callback: @escaping (_ t: GetUserListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetUserListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Returns the list of users requested.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func get(parameters: Parameters, callback: @escaping (_ t: GetUserListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: GetUserListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Returns the list of users requested.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func get(parameters: GetParameters, callback: @escaping (_ t: GetUserListResponse?, _ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        /*
        User name or email
        */
        open var `filter`: [String]?
        /*
        Page
        */
        open var `count`: Int?
        /*
        1-based index of the query result
        */
        open var `startIndex`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(filter: [String]? = nil, count: Int? = nil, startIndex: Int? = nil) {
            self.init()
            self.filter = `filter`
            self.count = `count`
            self.startIndex = `startIndex`
        }
        open func mapping(map: Map) {
            `filter` <- map["filter"]
            `count` <- map["count"]
            `startIndex` <- map["startIndex"]
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Creates a user.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func post(callback: @escaping (_ t: UserInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: UserInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Creates a user.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: UserInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: UserInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Creates a user.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func post(parameters: UserCreationRequest, callback: @escaping (_ t: UserInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func put(callback: @escaping (_ t: UserInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: UserInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: UserInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: UserInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func put(parameters: UserUpdateRequest, callback: @escaping (_ t: UserInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
