import Foundation
import ObjectMapper
open class CompanyDirectoryPhoneNumberInfo: Mappable {
    /*
    Extension phone number in E.164 format
    */
    open var `phoneNumber`: String?
    /*
    Type of a phone number
    */
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, type: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `type` <- map["type"]
    }
}
