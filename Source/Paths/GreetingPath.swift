import Foundation
import ObjectMapper
import Alamofire
open class GreetingPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "greeting"
        }
    }
    /*
    <p style='font-style:italic;'>Since 8.2 (Release 1.0.26)</p><p>Returns a list of predefined standard greetings. Please note: Custom greetings recorded by user are not returned in response to this request. See Get Extension Custom Greetings.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>View Greetings</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(callback: @escaping (_ t: DictionaryGreetingList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: DictionaryGreetingList?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 8.2 (Release 1.0.26)</p><p>Returns a list of predefined standard greetings. Please note: Custom greetings recorded by user are not returned in response to this request. See Get Extension Custom Greetings.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>View Greetings</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: DictionaryGreetingList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: DictionaryGreetingList?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 8.2 (Release 1.0.26)</p><p>Returns a list of predefined standard greetings. Please note: Custom greetings recorded by user are not returned in response to this request. See Get Extension Custom Greetings.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>View Greetings</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: DictionaryGreetingList?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items). If not specified, the value is '100' by default
        */
        open var `perPage`: Int?
        /*
        Type of a greeting, specifying the case when the greeting is played
        */
        open var `type`: String?
        /*
        Usage type of a greeting, specifying if the greeting is applied for user extension or department extension
        */
        open var `usageType`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(page: Int? = nil, perPage: Int? = nil, type: String? = nil, usageType: String? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
            self.type = `type`
            self.usageType = `usageType`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `type` <- map["type"]
            `usageType` <- map["usageType"]
        }
    }
    /*
    <p style='font-style:italic;'>Since 8.2 (Release 1.0.26)</p><p>Returns a standard greeting by ID</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>View Greetings</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func get(callback: @escaping (_ t: DictionaryGreetingInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: DictionaryGreetingInfo?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func post(callback: @escaping (_ t: CustomCompanyGreetingInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: CustomCompanyGreetingInfo?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: CustomCompanyGreetingInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: CustomCompanyGreetingInfo?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func post(parameters: CustomGreetingRequest, callback: @escaping (_ t: CustomCompanyGreetingInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
