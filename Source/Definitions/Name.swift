import Foundation
import ObjectMapper
open class Name: Mappable {
    /*
    */
    open var `familyName`: String?
    /*
    */
    open var `givenName`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(familyName: String? = nil, givenName: String? = nil) {
        self.init()
        self.familyName = `familyName`
        self.givenName = `givenName`
    }
    open func mapping(map: Map) {
        `familyName` <- map["familyName"]
        `givenName` <- map["givenName"]
    }
}
