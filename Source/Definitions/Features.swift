import Foundation
import ObjectMapper
open class Features: Mappable {
    /*
    */
    open var `voip`: Feature?
    /*
    */
    open var `ringOut`: Feature?
    /*
    */
    open var `sms`: Feature?
    /*
    */
    open var `faxOut`: Feature?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(voip: Feature? = nil, ringOut: Feature? = nil, sms: Feature? = nil, faxOut: Feature? = nil) {
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
