import Foundation
import ObjectMapper
open class SIPFlagsRespones: Mappable {
    /*
    If 'True' VoIP calling feature is enabled
    */
    open var `voipFeatureEnabled`: String?
    /*
    If 'True' the request is sent from IP address of a country blocked for VoIP calling
    */
    open var `voipCountryBlocked`: String?
    /*
    If 'True' outbound calls are enabled
    */
    open var `outboundCallsEnabled`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(voipFeatureEnabled: String? = nil, voipCountryBlocked: String? = nil, outboundCallsEnabled: String? = nil) {
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
