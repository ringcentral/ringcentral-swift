import Foundation
import ObjectMapper
open class ForwardingNumberResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `phoneNumber`: String?
    /*
    */
    open var `label`: String?
    /*
    */
    open var `features`: [String]?
    /*
    */
    open var `flipNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, phoneNumber: String? = nil, label: String? = nil, features: [String]? = nil, flipNumber: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.phoneNumber = `phoneNumber`
        self.label = `label`
        self.features = `features`
        self.flipNumber = `flipNumber`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `phoneNumber` <- map["phoneNumber"]
        `label` <- map["label"]
        `features` <- map["features"]
        `flipNumber` <- map["flipNumber"]
    }
}
