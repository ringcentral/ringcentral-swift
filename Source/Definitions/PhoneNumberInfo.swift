import Foundation
import ObjectMapper
open class PhoneNumberInfo: Mappable {
    // Internal identifier of a phone number
    open var `id`: String?
    // Brief information on a phone number country
    open var `country`: CountryInfo?
    // Information on the extension, to which the phone number is assigned. Returned only for the request of Account phone number list
    open var `extension`: PhoneNumberInfo_ExtensionInfo?
    // Indicates if this phone number is enabled to appear as CallerId and/or to send outbound SMS from it. Returned only for the request of Extension phone number list
    open var `features`: [String]?
    // Location (City, State). Filled for local US numbers
    open var `location`: String?
    // Payment type. 'External' is returned for forwarded numbers which are not terminated in the RingCentral phone system
    open var `paymentType`: String?
    // Phone number
    open var `phoneNumber`: String?
    // Status of a phone number. If the value is 'Normal', the phone number is ready to be used. Otherwise it is an external number not yet ported to RingCentral
    open var `status`: String?
    // Phone number type
    open var `type`: String?
    // Usage type of the phone number
    open var `usageType`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, country: CountryInfo? = nil, extension: PhoneNumberInfo_ExtensionInfo? = nil, features: [String]? = nil, location: String? = nil, paymentType: String? = nil, phoneNumber: String? = nil, status: String? = nil, type: String? = nil, usageType: String? = nil) {
        self.init()
        self.id = `id`
        self.country = `country`
        self.extension = `extension`
        self.features = `features`
        self.location = `location`
        self.paymentType = `paymentType`
        self.phoneNumber = `phoneNumber`
        self.status = `status`
        self.type = `type`
        self.usageType = `usageType`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `country` <- map["country"]
        `extension` <- map["extension"]
        `features` <- map["features"]
        `location` <- map["location"]
        `paymentType` <- map["paymentType"]
        `phoneNumber` <- map["phoneNumber"]
        `status` <- map["status"]
        `type` <- map["type"]
        `usageType` <- map["usageType"]
    }
}
