import Foundation
import ObjectMapper
open class AccountStatusInfo: Mappable {
    /*
    A free-form user comment, describing the status change reason
    */
    open var `comment`: String?
    /*
    Type of suspension
    */
    open var `reason`: String?
    /*
    Date until which the account will get deleted. The default value is 30 days since current date
    */
    open var `till`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(comment: String? = nil, reason: String? = nil, till: String? = nil) {
        self.init()
        self.comment = `comment`
        self.reason = `reason`
        self.till = `till`
    }
    open func mapping(map: Map) {
        `comment` <- map["comment"]
        `reason` <- map["reason"]
        `till` <- map["till"]
    }
}
