import Foundation
import ObjectMapper
open class HomeCountry: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `isoCode`: String?
    /*
    */
    open var `callingCode`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, name: String? = nil, isoCode: String? = nil, callingCode: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.name = `name`
        self.isoCode = `isoCode`
        self.callingCode = `callingCode`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `name` <- map["name"]
        `isoCode` <- map["isoCode"]
        `callingCode` <- map["callingCode"]
    }
}
