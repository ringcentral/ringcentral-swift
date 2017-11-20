import Foundation
import ObjectMapper
open class LicenseInfo: Mappable {
    /*
    Canonical URI of a license
    */
    open var `uri`: String?
    /*
    Internal identifier of a license
    */
    open var `id`: String?
    /*
    License type data
    */
    open var `type`: LicenseFeatureInfo?
    /*
    Datetime when license was purchased in ISO 8601 format including timezone, for example 2017-03-10T18:07:52.534Z
    */
    open var `creationTime`: String?
    /*
    Information on extension to which a license can be assigned
    */
    open var `extension`: LicenseExtensionInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, type: LicenseFeatureInfo? = nil, creationTime: String? = nil, extension: LicenseExtensionInfo? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.type = `type`
        self.creationTime = `creationTime`
        self.extension = `extension`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
        `creationTime` <- map["creationTime"]
        `extension` <- map["extension"]
    }
}
