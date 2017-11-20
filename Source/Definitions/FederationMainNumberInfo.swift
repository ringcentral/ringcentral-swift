import Foundation
import ObjectMapper
open class FederationMainNumberInfo: Mappable {
    /*
    Main company number of an account in E.164 format
    */
    open var `phoneNumber`: String?
    /*
    Main company number of an account formatted as consistent with the home country of the current extension
    */
    open var `formattedPhoneNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, formattedPhoneNumber: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.formattedPhoneNumber = `formattedPhoneNumber`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `formattedPhoneNumber` <- map["formattedPhoneNumber"]
    }
}
