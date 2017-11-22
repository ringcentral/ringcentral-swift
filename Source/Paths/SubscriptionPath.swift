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
    */
    open func list(callback: @escaping (_ t: RecordsCollectionResourceSubscriptionResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: RecordsCollectionResourceSubscriptionResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.6 (Release 5.15)</p><p>Creates a new subscription.</p><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func post(callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.6 (Release 5.15)</p><p>Creates a new subscription.</p><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.6 (Release 5.15)</p><p>Creates a new subscription.</p><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func post(parameters: CreateSubscriptionRequest, callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    <p style='font-style:italic;'>Since 1.0.6 (Release 5.15)</p><p>Returns the requested subscription.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.6 (Release 5.15)</p><p>Renews the existent subscription if the request body is empty. If event filters are specified, calling this method modifies the event filters for the existing subscription. The client application can extend or narrow the events for which it receives notifications in the frame of one subscription.</p><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.6 (Release 5.15)</p><p>Renews the existent subscription if the request body is empty. If event filters are specified, calling this method modifies the event filters for the existing subscription. The client application can extend or narrow the events for which it receives notifications in the frame of one subscription.</p><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.6 (Release 5.15)</p><p>Renews the existent subscription if the request body is empty. If event filters are specified, calling this method modifies the event filters for the existing subscription. The client application can extend or narrow the events for which it receives notifications in the frame of one subscription.</p><h4>Usage Plan Group</h4><p>Medium</p>
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
    <p style='font-style:italic;'></p><p>Cancels the existent subscription.</p><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
