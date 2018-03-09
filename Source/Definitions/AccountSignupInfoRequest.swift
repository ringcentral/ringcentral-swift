import Foundation
import ObjectMapper
open class AccountSignupInfoRequest: Mappable {
    /*
    Specifies whether marketing information is sent to the user
    */
    open var `marketingAccepted`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(marketingAccepted: Bool? = nil) {
        self.init()
        self.marketingAccepted = `marketingAccepted`
    }
    open func mapping(map: Map) {
        `marketingAccepted` <- map["marketingAccepted"]
    }
}
