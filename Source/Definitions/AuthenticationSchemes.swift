import Foundation
import ObjectMapper
open class AuthenticationSchemes: Mappable {
    /*
    */
    open var `authenticationSchemes`: [AuthenticationScheme]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(authenticationSchemes: [AuthenticationScheme]? = nil) {
        self.init()
        self.authenticationSchemes = `authenticationSchemes`
    }
    open func mapping(map: Map) {
        `authenticationSchemes` <- map["authenticationSchemes"]
    }
}
