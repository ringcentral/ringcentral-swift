import Foundation
import ObjectMapper
open class LicenseTypeInfo: Mappable {
    /*
    Internal identifier of a type
    */
    open var `id`: String?
    /*
    Canonical URI of a license type resource
    */
    open var `uri`: String?
    /*
    Short name of a license type
    */
    open var `sku`: String?
    /*
    Full name of a license type
    */
    open var `name`: String?
    /*
    State of a license. Webinars and Large Meetings are assignable
    */
    open var `assignable`: String?
    /*
    License feature info
    */
    open var `feature`: LicenseFeatureInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, sku: String? = nil, name: String? = nil, assignable: String? = nil, feature: LicenseFeatureInfo? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.sku = `sku`
        self.name = `name`
        self.assignable = `assignable`
        self.feature = `feature`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `sku` <- map["sku"]
        `name` <- map["name"]
        `assignable` <- map["assignable"]
        `feature` <- map["feature"]
    }
}
