import Foundation
import ObjectMapper
open class HintsResource: Mappable {
    /*
    */
    open var `userCredentialState`: HintResource?
    /*
    */
    open var `trialState`: HintResource?
    /*
    */
    open var `appVersionUpgrade`: HintResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(userCredentialState: HintResource? = nil, trialState: HintResource? = nil, appVersionUpgrade: HintResource? = nil) {
        self.init()
        self.userCredentialState = `userCredentialState`
        self.trialState = `trialState`
        self.appVersionUpgrade = `appVersionUpgrade`
    }
    open func mapping(map: Map) {
        `userCredentialState` <- map["userCredentialState"]
        `trialState` <- map["trialState"]
        `appVersionUpgrade` <- map["appVersionUpgrade"]
    }
}
