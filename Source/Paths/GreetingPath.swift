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
    Returns a list of predefined standard greetings. Custom greetings recorded by user are not returned in response to this request. See Get Extension Custom Greetings.
    */
    open func list(callback: @escaping (_ t: DictionaryGreetingList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: DictionaryGreetingList?, error) in
            callback(t, error)
        }
    }
    /*
    Returns a list of predefined standard greetings. Custom greetings recorded by user are not returned in response to this request. See Get Extension Custom Greetings.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: DictionaryGreetingList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: DictionaryGreetingList?, error) in
            callback(t, error)
        }
    }
    /*
    Returns a list of predefined standard greetings. Custom greetings recorded by user are not returned in response to this request. See Get Extension Custom Greetings.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: DictionaryGreetingList?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Indicates the page number to retrieve. Only positive number values are accepted.
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items).
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
    Returns a standard greeting by ID.
    */
    open func get(callback: @escaping (_ t: DictionaryGreetingInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: DictionaryGreetingInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a custom company greeting.
    */
    open func post(callback: @escaping (_ t: CustomCompanyGreetingInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: CustomCompanyGreetingInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a custom company greeting.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: CustomCompanyGreetingInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: CustomCompanyGreetingInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a custom company greeting.
    */
    open func post(parameters: CustomCompanyGreetingRequest, callback: @escaping (_ t: CustomCompanyGreetingInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
