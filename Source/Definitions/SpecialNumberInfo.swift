import Foundation
import ObjectMapper
open class SpecialNumberInfo: Mappable {
    /*
    Service phone number in N11 code format
    */
    open var `phoneNumber`: String?
    /*
    Description of a special number
    */
    open var `description`: String?
    /*
    Information on options allowed/disallowed for the special number
    */
    open var `features`: SpecialNumberFeaturesInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, description: String? = nil, features: SpecialNumberFeaturesInfo? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.description = `description`
        self.features = `features`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `description` <- map["description"]
        `features` <- map["features"]
    }
}
