import Foundation
import ObjectMapper
open class NameInfo: Mappable {
    /*
    User first name
    */
    open var `givenName`: String?
    /*
    User last name
    */
    open var `familyName`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(givenName: String? = nil, familyName: String? = nil) {
        self.init()
        self.givenName = `givenName`
        self.familyName = `familyName`
    }
    open func mapping(map: Map) {
        `givenName` <- map["givenName"]
        `familyName` <- map["familyName"]
    }
}
