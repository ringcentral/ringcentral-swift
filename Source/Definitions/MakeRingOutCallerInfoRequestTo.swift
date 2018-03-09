import Foundation
import ObjectMapper
open class MakeRingOutCallerInfoRequestTo: Mappable {
    /*
    Phone number in E.164 format
    */
    open var `phoneNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
    }
}
