import Foundation
import ObjectMapper
open class ModifyAccountBusinessAddressRequest: Mappable {
    /*
    Company business name
    */
    open var `company`: String?
    /*
    Company business email address
    */
    open var `email`: String?
    /*
    Company business address
    */
    open var `businessAddress`: BusinessAddressInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(company: String? = nil, email: String? = nil, businessAddress: BusinessAddressInfo? = nil) {
        self.init()
        self.company = `company`
        self.email = `email`
        self.businessAddress = `businessAddress`
    }
    open func mapping(map: Map) {
        `company` <- map["company"]
        `email` <- map["email"]
        `businessAddress` <- map["businessAddress"]
    }
}
