import Foundation
import ObjectMapper
open class MakeRingOutRequest: Mappable {
    /*
    Phone number of the caller. This number corresponds to the 1st leg of the RingOut call. This number can be one of user's configured forwarding numbers or arbitrary number
    */
    open var `from`: MakeRingOutCallerInfoRequestFrom?
    /*
    Phone number of the called party. This number corresponds to the 2nd leg of the RingOut call
    */
    open var `to`: MakeRingOutCallerInfoRequestTo?
    /*
    The number which will be displayed to the called party
    */
    open var `callerId`: MakeRingOutCallerInfoRequestTo?
    /*
    The audio prompt that the calling party hears when the call is connected
    */
    open var `playPrompt`: Bool?
    /*
    Optional. Dialing plan country data. If not specified, then extension home country is applied by default
    */
    open var `country`: MakeRingOutCoutryInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(from: MakeRingOutCallerInfoRequestFrom? = nil, to: MakeRingOutCallerInfoRequestTo? = nil, callerId: MakeRingOutCallerInfoRequestTo? = nil, playPrompt: Bool? = nil, country: MakeRingOutCoutryInfo? = nil) {
        self.init()
        self.from = `from`
        self.to = `to`
        self.callerId = `callerId`
        self.playPrompt = `playPrompt`
        self.country = `country`
    }
    open func mapping(map: Map) {
        `from` <- map["from"]
        `to` <- map["to"]
        `callerId` <- map["callerId"]
        `playPrompt` <- map["playPrompt"]
        `country` <- map["country"]
    }
}
