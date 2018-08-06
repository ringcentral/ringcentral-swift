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
    Returns the extension answering rules.
    */
    open func get(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Returns the extension answering rules.
    */
    open func get(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    Returns the extension answering rules.
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
    Creates a custom answering rule for a particular caller ID.
    */
    open func post(callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a custom answering rule for a particular caller ID.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a custom answering rule for a particular caller ID.
    */
    open func post(parameters: CreateAnsweringRuleRequest, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    Updates a custom answering rule for a particular caller ID.
    */
    open func put(callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates a custom answering rule for a particular caller ID.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates a custom answering rule for a particular caller ID.
    */
    open func put(parameters: UpdateAnsweringRuleRequest, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    Deletes a custom answering rule by a particular ID.
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Returns a list of company answering rules.
    */
    open func list(callback: @escaping (_ t: CompanyAnsweringRuleList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: CompanyAnsweringRuleList?, error) in
            callback(t, error)
        }
    }
}
