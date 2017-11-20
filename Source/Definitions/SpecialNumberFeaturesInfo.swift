import Foundation
import ObjectMapper
open class SpecialNumberFeaturesInfo: Mappable {
    /*
    VoIP call
    */
    open var `voip`: OptionInfo?
    /*
    RingOut call
    */
    open var `ringOut`: OptionInfo?
    /*
    Outgoing SMS
    */
    open var `sms`: OptionInfo?
    /*
    Outgoing Fax
    */
    open var `faxOut`: OptionInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(voip: OptionInfo? = nil, ringOut: OptionInfo? = nil, sms: OptionInfo? = nil, faxOut: OptionInfo? = nil) {
        self.init()
        self.voip = `voip`
        self.ringOut = `ringOut`
        self.sms = `sms`
        self.faxOut = `faxOut`
    }
    open func mapping(map: Map) {
        `voip` <- map["voip"]
        `ringOut` <- map["ringOut"]
        `sms` <- map["sms"]
        `faxOut` <- map["faxOut"]
    }
}
