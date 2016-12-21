import Foundation
import ObjectMapper
import Alamofire
open class SubscriptionPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "subscription"
        }
    }
    // Create New Subscription
    open func post(callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    // Create New Subscription
    open func post(parameters: Parameters, callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    // Create New Subscription
    open func post(parameters: PostParameters, callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        // Mandatory. Collection of URIs to API resources (see Event Types for details). For APNS transport type only message event filter is available
        open var `eventFilters`: [String]?
        // Notification delivery settings
        open var `deliveryMode`: Subscription_Request_DeliveryMode?
        public init() {
        }
        convenience public init(eventFilters: [String]? = nil, deliveryMode: Subscription_Request_DeliveryMode? = nil) {
            self.init()
            self.eventFilters = `eventFilters`
            self.deliveryMode = `deliveryMode`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `eventFilters` <- map["eventFilters"]
            `deliveryMode` <- map["deliveryMode"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    // Cancel Subscription by ID
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get Subscription by ID
    open func get(callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    // Update/Renew Subscription by ID
    open func put(callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    // Update/Renew Subscription by ID
    open func put(parameters: Parameters, callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    // Update/Renew Subscription by ID
    open func put(parameters: PutParameters, callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    open class PutParameters: Mappable {
        // Collection of URIs to API resources (see Event Types). Mandatory field
        open var `eventFilters`: [String]?
        public init() {
        }
        convenience public init(eventFilters: [String]? = nil) {
            self.init()
            self.eventFilters = `eventFilters`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `eventFilters` <- map["eventFilters"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
}
