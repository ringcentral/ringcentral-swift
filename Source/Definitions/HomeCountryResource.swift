import Foundation
import ObjectMapper
open class HomeCountryResource: Mappable {
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
    open var `isoCode`: String?
    /*
    */
    open var `callingCode`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, name: String? = nil, isoCode: String? = nil, callingCode: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.name = `name`
        self.isoCode = `isoCode`
        self.callingCode = `callingCode`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `isoCode` <- map["isoCode"]
        `callingCode` <- map["callingCode"]
    }
}
