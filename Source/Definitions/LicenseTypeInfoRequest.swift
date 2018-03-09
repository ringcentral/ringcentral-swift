import Foundation
import ObjectMapper
open class LicenseTypeInfoRequest: Mappable {
    /*
    Name of a license type = ['RMS', 'RCN', 'WBR-100', 'WBR-500', 'WBR-1000', 'WBR-3000', 'LRM-50', 'LRM-100', 'LRM-200']
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
