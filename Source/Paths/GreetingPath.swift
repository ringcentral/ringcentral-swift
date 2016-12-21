import Foundation
import ObjectMapper
import Alamofire
open class GreetingPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "greeting"
        }
    }
    // Create Custom Greeting
    open func post(callback: @escaping (_ t: CustomGreetingInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: CustomGreetingInfo?, error) in
            callback(t, error)
        }
    }
    // Create Custom Greeting
    open func post(parameters: Parameters, callback: @escaping (_ t: CustomGreetingInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: CustomGreetingInfo?, error) in
            callback(t, error)
        }
    }
    // Create Custom Greeting
    open func post(parameters: PostParameters, callback: @escaping (_ t: CustomGreetingInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        // Type of a greeting, specifying the case when the greeting is played. See also Greeting Types
        open var `type`: String?
        // Information on an answering rule that the greeting is applied to
        open var `answeringRule`: CustomGreetingInfo_AnsweringRuleInfo?
        public init() {
        }
        convenience public init(type: String? = nil, answeringRule: CustomGreetingInfo_AnsweringRuleInfo? = nil) {
            self.init()
            self.type = `type`
            self.answeringRule = `answeringRule`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `type` <- map["type"]
            `answeringRule` <- map["answeringRule"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    // Get Custom Greeting by ID
    open func get(callback: @escaping (_ t: CustomGreetingInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: CustomGreetingInfo?, error) in
            callback(t, error)
        }
    }
}
