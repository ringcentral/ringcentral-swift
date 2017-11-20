import Foundation
import ObjectMapper
open class ServiceInfoRequest: Mappable {
    /*
    Limits which are effective for an account
    */
    open var `limits`: AccountLimits?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(limits: AccountLimits? = nil) {
        self.init()
        self.limits = `limits`
    }
    open func mapping(map: Map) {
        `limits` <- map["limits"]
    }
}
