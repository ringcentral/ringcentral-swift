import Foundation
import ObjectMapper
import Alamofire
open class ReservePhoneNumber_Request_ReserveRecord: Mappable {
    // Phone number in E.164 format without a '+'
    open var `phoneNumber`: String?
    // The datetime up to which the number is reserved in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. If it is omitted or explicitly set to 'null', the number will be un-reserved if it was reserved previously by the same session. 'Min' value is 30 seconds; 'Max' value is 30 days (for reservation by brand) and 20 minutes (for reservation by account/session)
    open var `reservedTill`: String?
    public init() {
    }
    convenience public init(phoneNumber: String? = nil, reservedTill: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.reservedTill = `reservedTill`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `reservedTill` <- map["reservedTill"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
