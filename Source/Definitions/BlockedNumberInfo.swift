import Foundation
import ObjectMapper
open class BlockedNumberInfo: Definition {
    // Standard resource properties ID and canonical URI, see the section called “Resource Identification Properties”
    open var `id`: String?
    // Canonical URI of a blocked number resource
    open var `uri`: String?
    // Name assigned by a user to a blocked phone number
    open var `name`: String?
    // Phone number to be blocked
    open var `phoneNumber`: String?
    convenience public init(id: String? = nil, uri: String? = nil, name: String? = nil, phoneNumber: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.name = `name`
        self.phoneNumber = `phoneNumber`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `name` <- map["name"]
        `phoneNumber` <- map["phoneNumber"]
    }
}
