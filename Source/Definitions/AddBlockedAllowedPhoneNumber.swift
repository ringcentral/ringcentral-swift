import Foundation
import ObjectMapper
open class AddBlockedAllowedPhoneNumber: Mappable {
    /*
    A blocked/allowed phone number in [E.164](https://www.itu.int/rec/T-REC-E.164-201011-I) format
    */
    open var `phoneNumber`: String?
    /*
    Custom name of a blocked/allowed phone number
    */
    open var `label`: String?
    /*
    Status of a phone number
    */
    open var `status`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, label: String? = nil, status: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.label = `label`
        self.status = `status`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `label` <- map["label"]
        `status` <- map["status"]
    }
}
