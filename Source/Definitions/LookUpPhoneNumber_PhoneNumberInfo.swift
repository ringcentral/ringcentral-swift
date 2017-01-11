import Foundation
import ObjectMapper
open class LookUpPhoneNumber_PhoneNumberInfo: Mappable {
    // Phone number in E.164 format without a '+'
    open var `phoneNumber`: String?
    // Phone number formatted according to current brand's default country
    open var `formattedNumber`: String?
    // Vanity pattern for this number. Returned only when vanity search option is requested. Vanity pattern corresponds to request parameters nxx plus line or numberPattern
    open var `vanityPattern`: String?
    // The value is returned if the extendedSearch parameter is true. '10' is the closest match
    open var `rank`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, formattedNumber: String? = nil, vanityPattern: String? = nil, rank: Int? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.formattedNumber = `formattedNumber`
        self.vanityPattern = `vanityPattern`
        self.rank = `rank`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `formattedNumber` <- map["formattedNumber"]
        `vanityPattern` <- map["vanityPattern"]
        `rank` <- map["rank"]
    }
}
