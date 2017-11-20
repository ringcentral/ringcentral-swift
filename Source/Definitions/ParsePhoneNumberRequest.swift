import Foundation
import ObjectMapper
open class ParsePhoneNumberRequest: Mappable {
    /*
    Phone numbers passed in a string. The maximum value of phone numbers is limited to 64. The maximum number of symbols in each phone number in a string is 64
    */
    open var `originalStrings`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(originalStrings: String? = nil) {
        self.init()
        self.originalStrings = `originalStrings`
    }
    open func mapping(map: Map) {
        `originalStrings` <- map["originalStrings"]
    }
}
