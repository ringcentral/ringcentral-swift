import Foundation
import ObjectMapper
open class CallRecordingSettingsResource: Mappable {
    /*
    */
    open var `onDemand`: OnDemandResource?
    /*
    */
    open var `automatic`: AutomaticRecordingResource?
    /*
    Collection of Greeting Info
    */
    open var `greetings`: [GreetingResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(onDemand: OnDemandResource? = nil, automatic: AutomaticRecordingResource? = nil, greetings: [GreetingResource]? = nil) {
        self.init()
        self.onDemand = `onDemand`
        self.automatic = `automatic`
        self.greetings = `greetings`
    }
    open func mapping(map: Map) {
        `onDemand` <- map["onDemand"]
        `automatic` <- map["automatic"]
        `greetings` <- map["greetings"]
    }
}
