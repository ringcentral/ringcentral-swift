import Foundation
import ObjectMapper
import Alamofire
open class RingoutPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "ringout"
        }
    }
    // Initiate RingOut Call
    open func post(callback: @escaping (_ t: RingOutInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: RingOutInfo?, error) in
            callback(t, error)
        }
    }
    // Initiate RingOut Call
    open func post(parameters: Parameters, callback: @escaping (_ t: RingOutInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: RingOutInfo?, error) in
            callback(t, error)
        }
    }
    // Initiate RingOut Call
    open func post(parameters: PostParameters, callback: @escaping (_ t: RingOutInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Definition {
        // Phone number of the caller. This number corresponds to the 1st leg of the RingOut call. This number can be one of user's configured forwarding numbers or arbitrary number
        open var `from`: RingOut_Request_From?
        // Phone number of the called party. This number corresponds to the 2nd leg of the RingOut call
        open var `to`: RingOut_Request_To?
        // The number which will be displayed to the called party
        open var `callerId`: RingOut_Request_To?
        // The audio prompt that the calling party hears when the call is connected
        open var `playPrompt`: Bool?
        // Optional. Dialing plan country data. If not specified, then extension home country is applied by default
        open var `country`: RingOut_Request_CountryInfo?
        convenience public init(from: RingOut_Request_From? = nil, to: RingOut_Request_To? = nil, callerId: RingOut_Request_To? = nil, playPrompt: Bool? = nil, country: RingOut_Request_CountryInfo? = nil) {
            self.init()
            self.from = `from`
            self.to = `to`
            self.callerId = `callerId`
            self.playPrompt = `playPrompt`
            self.country = `country`
        }
        required public init?(map: Map) {
            super.init(map: map)
        }
        public override init() {
            super.init()
        }
        open override func mapping(map: Map) {
            `from` <- map["from"]
            `to` <- map["to"]
            `callerId` <- map["callerId"]
            `playPrompt` <- map["playPrompt"]
            `country` <- map["country"]
        }
    }
    // Cancel RingOut Call
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get RingOut Call Status
    open func get(callback: @escaping (_ t: RingOutInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: RingOutInfo?, error) in
            callback(t, error)
        }
    }
}
