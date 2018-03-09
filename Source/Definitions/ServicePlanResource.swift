import Foundation
import ObjectMapper
open class ServicePlanResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `edition`: String?
    /*
    */
    open var `brand`: BrandResource?
    /*
    */
    open var `type`: String?
    /*
    */
    open var `serviceFeatures`: [ServiceFeatureValue]?
    /*
    */
    open var `limits`: AccountLimitsResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, name: String? = nil, edition: String? = nil, brand: BrandResource? = nil, type: String? = nil, serviceFeatures: [ServiceFeatureValue]? = nil, limits: AccountLimitsResource? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.name = `name`
        self.edition = `edition`
        self.brand = `brand`
        self.type = `type`
        self.serviceFeatures = `serviceFeatures`
        self.limits = `limits`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `edition` <- map["edition"]
        `brand` <- map["brand"]
        `type` <- map["type"]
        `serviceFeatures` <- map["serviceFeatures"]
        `limits` <- map["limits"]
    }
}
