import Foundation
import ObjectMapper
open class LicenseInfoRequest: Mappable {
    /*
    Type of a license
    */
    open var `type`: LicenseTypeInfoRequest?
    /*
    Quantity of licenses to be purchased
    */
    open var `quantity`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: LicenseTypeInfoRequest? = nil, quantity: Int? = nil) {
        self.init()
        self.type = `type`
        self.quantity = `quantity`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `quantity` <- map["quantity"]
    }
}
