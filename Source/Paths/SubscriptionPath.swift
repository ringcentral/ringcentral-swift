import Foundation
import ObjectMapper
import Alamofire
open class SubscriptionPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "subscription"
        }
    }
    open func `renew`() -> RenewPath {
        return RenewPath(parent: self)
    }
    /*
    Returns a list of subscriptions created by a particular user on a particular client app.
    */
    open func list(callback: @escaping (_ t: RecordsCollectionResourceSubscriptionResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: RecordsCollectionResourceSubscriptionResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a new subscription.
    */
    open func post(callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a new subscription.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a new subscription.
    */
    open func post(parameters: CreateSubscriptionRequest, callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    Returns the requested subscription.
    */
    open func get(callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Renews the existent subscription if the request body is empty. If event filters are specified, calling this method modifies the event filters for the existing subscription. The client application can extend or narrow the events for which it receives notifications in the frame of one subscription.
    */
    open func put(callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Renews the existent subscription if the request body is empty. If event filters are specified, calling this method modifies the event filters for the existing subscription. The client application can extend or narrow the events for which it receives notifications in the frame of one subscription.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Renews the existent subscription if the request body is empty. If event filters are specified, calling this method modifies the event filters for the existing subscription. The client application can extend or narrow the events for which it receives notifications in the frame of one subscription.
    */
    open func put(parameters: PutParameters, callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    open class PutParameters: Mappable {
        /*
        If 'True' then aggregated presence status is returned in a notification payload
        */
        open var `aggregated`: Bool?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(aggregated: Bool? = nil) {
            self.init()
            self.aggregated = `aggregated`
        }
        open func mapping(map: Map) {
            `aggregated` <- map["aggregated"]
        }
    }
    /*
    Cancels the existent subscription.
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
