import Foundation
import ObjectMapper
open class RingOutResource: Mappable {
    /*
    */
    open var `from`: RingOutFromInfo?
    /*
    */
    open var `to`: RingOutPhoneNumberInfo?
    /*
    */
    open var `callerId`: RingOutPhoneNumberInfo?
    /*
    */
    open var `playPrompt`: Bool?
    /*
    */
    open var `country`: RingOutCountry?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(from: RingOutFromInfo? = nil, to: RingOutPhoneNumberInfo? = nil, callerId: RingOutPhoneNumberInfo? = nil, playPrompt: Bool? = nil, country: RingOutCountry? = nil) {
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
