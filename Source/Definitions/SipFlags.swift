import Foundation
import ObjectMapper
open class SipFlags: Mappable {
    /*
    */
    open var `voipFeatureEnabled`: Bool?
    /*
    */
    open var `voipCountryBlocked`: Bool?
    /*
    */
    open var `outboundCallsEnabled`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(voipFeatureEnabled: Bool? = nil, voipCountryBlocked: Bool? = nil, outboundCallsEnabled: Bool? = nil) {
        self.init()
        self.voipFeatureEnabled = `voipFeatureEnabled`
        self.voipCountryBlocked = `voipCountryBlocked`
        self.outboundCallsEnabled = `outboundCallsEnabled`
    }
    open func mapping(map: Map) {
        `voipFeatureEnabled` <- map["voipFeatureEnabled"]
        `voipCountryBlocked` <- map["voipCountryBlocked"]
        `outboundCallsEnabled` <- map["outboundCallsEnabled"]
    }
}
