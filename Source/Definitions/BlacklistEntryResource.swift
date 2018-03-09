import Foundation
import ObjectMapper
open class BlacklistEntryResource: Mappable {
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
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, phoneNumber: String? = nil, name: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.phoneNumber = `phoneNumber`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `phoneNumber` <- map["phoneNumber"]
        `name` <- map["name"]
    }
}
