import Foundation
import ObjectMapper
open class BlockedNumberInfo: Mappable {
    /*
    Standard resource properties ID and canonical URI, see the section called “Resource Identification Properties”
    */
    open var `id`: String?
    /*
    Canonical URI of a blocked number resource
    */
    open var `uri`: String?
    /*
    Name assigned by a user to a blocked phone number
    */
    open var `name`: String?
    /*
    Phone number to be blocked
    */
    open var `phoneNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, name: String? = nil, phoneNumber: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.name = `name`
        self.phoneNumber = `phoneNumber`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `name` <- map["name"]
        `phoneNumber` <- map["phoneNumber"]
    }
}
