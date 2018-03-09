import Foundation
import ObjectMapper
open class TesterFlagsResource: Mappable {
    /*
    */
    open var `tester`: Bool?
    /*
    */
    open var `autoDelete`: Bool?
    /*
    */
    open var `noBilling`: Bool?
    /*
    */
    open var `noBillingLimit`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(tester: Bool? = nil, autoDelete: Bool? = nil, noBilling: Bool? = nil, noBillingLimit: Bool? = nil) {
        self.init()
        self.tester = `tester`
        self.autoDelete = `autoDelete`
        self.noBilling = `noBilling`
        self.noBillingLimit = `noBillingLimit`
    }
    open func mapping(map: Map) {
        `tester` <- map["tester"]
        `autoDelete` <- map["autoDelete"]
        `noBilling` <- map["noBilling"]
        `noBillingLimit` <- map["noBillingLimit"]
    }
}
