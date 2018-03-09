import Foundation
import ObjectMapper
open class PhoneNumberStringsResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `originalStrings`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, originalStrings: [String]? = nil) {
        self.init()
        self.uri = `uri`
        self.originalStrings = `originalStrings`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `originalStrings` <- map["originalStrings"]
    }
}
