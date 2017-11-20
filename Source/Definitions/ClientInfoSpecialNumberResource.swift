import Foundation
import ObjectMapper
open class ClientInfoSpecialNumberResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `phoneNumber`: String?
    /*
    */
    open var `description`: String?
    /*
    */
    open var `features`: Features?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, phoneNumber: String? = nil, description: String? = nil, features: Features? = nil) {
        self.init()
        self.uri = `uri`
        self.phoneNumber = `phoneNumber`
        self.description = `description`
        self.features = `features`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `phoneNumber` <- map["phoneNumber"]
        `description` <- map["description"]
        `features` <- map["features"]
    }
}
