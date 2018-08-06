import Foundation
import ObjectMapper
open class LicenseTypeInfoRequest: Mappable {
    /*
    Name of a license type
    */
    open var `sku`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(sku: String? = nil) {
        self.init()
        self.sku = `sku`
    }
    open func mapping(map: Map) {
        `sku` <- map["sku"]
    }
}
