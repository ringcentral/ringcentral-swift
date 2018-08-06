import Foundation
import ObjectMapper
open class AccountBusinessAddressResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `businessAddress`: ContactBusinessAddressInfo?
    /*
    */
    open var `company`: String?
    /*
    */
    open var `email`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, businessAddress: ContactBusinessAddressInfo? = nil, company: String? = nil, email: String? = nil) {
        self.init()
        self.uri = `uri`
        self.businessAddress = `businessAddress`
        self.company = `company`
        self.email = `email`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `businessAddress` <- map["businessAddress"]
        `company` <- map["company"]
        `email` <- map["email"]
    }
}
