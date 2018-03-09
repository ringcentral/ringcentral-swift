import Foundation
import ObjectMapper
import Alamofire
open class AnsweringRulePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "answering-rule"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.15 (Release 7.0)</p><p>Returns the extension answering rules.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.15 (Release 7.0)</p><p>Returns the extension answering rules.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.15 (Release 7.0)</p><p>Returns the extension answering rules.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(parameters: GetParameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        /*
        */
        open var `page`: String?
        /*
        */
        open var `perPage`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(page: String? = nil, perPage: String? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.24 (Release 8.0)</p><p>Creates a custom answering rule for a particular caller ID.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func post(callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.24 (Release 8.0)</p><p>Creates a custom answering rule for a particular caller ID.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.24 (Release 8.0)</p><p>Creates a custom answering rule for a particular caller ID.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func post(parameters: CreateAnsweringRuleRequest, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    <p style='font-style:italic;'>Since 1.0.24 (Release 8.0)</p><p>Updates a custom answering rule for a particular caller ID.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.24 (Release 8.0)</p><p>Updates a custom answering rule for a particular caller ID.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.24 (Release 8.0)</p><p>Updates a custom answering rule for a particular caller ID.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(parameters: UpdateAnsweringRuleRequest, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    */
    open func delete(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    */
    open func delete(parameters: UpdateAnsweringRuleRequest, callback: @escaping (_ error: HTTPError?) -> Void) {
        delete(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Returns a list of company answering rules.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func list(callback: @escaping (_ t: CompanyAnsweringRuleList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: CompanyAnsweringRuleList?, error) in
            callback(t, error)
        }
    }
}
