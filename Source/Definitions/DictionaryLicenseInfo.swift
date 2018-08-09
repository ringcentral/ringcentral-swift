import Foundation
import ObjectMapper
open class DictionaryLicenseInfo: Mappable {
    /*
    Canonical URI of a license
    */
    open var `uri`: String?
    /*
    Internal identifier of a license
    */
    open var `id`: Int?
    /*
    Name of a license
    */
    open var `sku`: String?
    /*
    Full name of a license
    */
    open var `name`: String?
    /*
    License type data
    */
    open var `feature`: LicenseFeatureInfo?
    /*
    State of a license. Webinars and Large Meetings are assignable
    */
    open var `assignable`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: Int? = nil, sku: String? = nil, name: String? = nil, feature: LicenseFeatureInfo? = nil, assignable: Bool? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.sku = `sku`
        self.name = `name`
        self.feature = `feature`
        self.assignable = `assignable`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- map["id"]
        `sku` <- map["sku"]
        `name` <- map["name"]
        `feature` <- map["feature"]
        `assignable` <- map["assignable"]
    }
}
