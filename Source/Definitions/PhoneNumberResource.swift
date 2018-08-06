import Foundation
import ObjectMapper
open class PhoneNumberResource: Mappable {
    /*
    */
    open var `formattedPhoneNumber`: String?
    /*
    */
    open var `phoneNumber`: String?
    /*
    */
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(formattedPhoneNumber: String? = nil, phoneNumber: String? = nil, type: String? = nil) {
        self.init()
        self.formattedPhoneNumber = `formattedPhoneNumber`
        self.phoneNumber = `phoneNumber`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `formattedPhoneNumber` <- map["formattedPhoneNumber"]
        `phoneNumber` <- map["phoneNumber"]
        `type` <- map["type"]
    }
}
