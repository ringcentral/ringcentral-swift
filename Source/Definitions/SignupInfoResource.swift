import Foundation
import ObjectMapper
open class SignupInfoResource: Mappable {
    /*
    */
    open var `tosAccepted`: Bool?
    /*
    */
    open var `signupState`: [String]?
    /*
    */
    open var `verificationReason`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(tosAccepted: Bool? = nil, signupState: [String]? = nil, verificationReason: String? = nil) {
        self.init()
        self.tosAccepted = `tosAccepted`
        self.signupState = `signupState`
        self.verificationReason = `verificationReason`
    }
    open func mapping(map: Map) {
        `tosAccepted` <- map["tosAccepted"]
        `signupState` <- map["signupState"]
        `verificationReason` <- map["verificationReason"]
    }
}
