import Foundation
import ObjectMapper
open class SecurityContext: Mappable {
    /*
    */
    open var `userPrincipal`: Principal?
    /*
    */
    open var `secure`: Bool?
    /*
    */
    open var `authenticationScheme`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(userPrincipal: Principal? = nil, secure: Bool? = nil, authenticationScheme: String? = nil) {
        self.init()
        self.userPrincipal = `userPrincipal`
        self.secure = `secure`
        self.authenticationScheme = `authenticationScheme`
    }
    open func mapping(map: Map) {
        `userPrincipal` <- map["userPrincipal"]
        `secure` <- map["secure"]
        `authenticationScheme` <- map["authenticationScheme"]
    }
}
