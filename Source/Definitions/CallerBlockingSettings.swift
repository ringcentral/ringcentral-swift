import Foundation
import ObjectMapper
open class CallerBlockingSettings: Mappable {
    /*
    Call blocking options: either specific or all calls and faxes
    */
    open var `mode`: String?
    /*
    Determines how to handle calls with no caller ID in 'Specific' mode
    */
    open var `noCallerId`: String?
    /*
    Blocking settings for pay phones
    */
    open var `payPhones`: String?
    /*
    List of greetings played for blocked callers
    */
    open var `greetings`: [BlockedCallerGreetingInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(mode: String? = nil, noCallerId: String? = nil, payPhones: String? = nil, greetings: [BlockedCallerGreetingInfo]? = nil) {
        self.init()
        self.mode = `mode`
        self.noCallerId = `noCallerId`
        self.payPhones = `payPhones`
        self.greetings = `greetings`
    }
    open func mapping(map: Map) {
        `mode` <- map["mode"]
        `noCallerId` <- map["noCallerId"]
        `payPhones` <- map["payPhones"]
        `greetings` <- map["greetings"]
    }
}
