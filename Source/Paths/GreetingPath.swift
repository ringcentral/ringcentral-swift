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
    Create Custom Greeting. Creates extension user custom greeting.
    */
    open func post(callback: @escaping (_ t: CustomGreetingInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: CustomGreetingInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Create Custom Greeting. Creates extension user custom greeting.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: CustomGreetingInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: CustomGreetingInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Create Custom Greeting. Creates extension user custom greeting.
    */
    open func post(parameters: PostParameters, callback: @escaping (_ t: CustomGreetingInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        /*
        Type of a greeting, specifying the case when the greeting is played. See also Greeting Types
        */
        open var `type`: String?
        /*
        Information on an answering rule that the greeting is applied to
        */
        open var `answeringRule`: CustomGreetingInfo_AnsweringRuleInfo?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(type: String? = nil, answeringRule: CustomGreetingInfo_AnsweringRuleInfo? = nil) {
            self.init()
            self.type = `type`
            self.answeringRule = `answeringRule`
        }
        open func mapping(map: Map) {
            `type` <- map["type"]
            `answeringRule` <- map["answeringRule"]
        }
    }
    /*
    Get Custom Greeting by ID. Returns a custom greeting by ID.
    */
    open func get(callback: @escaping (_ t: CustomGreetingInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: CustomGreetingInfo?, error) in
            callback(t, error)
        }
    }
}
