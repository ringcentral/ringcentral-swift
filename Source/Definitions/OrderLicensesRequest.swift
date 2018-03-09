import Foundation
import ObjectMapper
open class OrderLicensesRequest: Mappable {
    /*
    List of licenses to be purchased
    */
    open var `addedLicenses`: [LicenseInfoRequest]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(addedLicenses: [LicenseInfoRequest]? = nil) {
        self.init()
        self.addedLicenses = `addedLicenses`
    }
    open func mapping(map: Map) {
        `addedLicenses` <- map["addedLicenses"]
    }
}
