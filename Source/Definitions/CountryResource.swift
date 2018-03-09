import Foundation
import ObjectMapper
open class CountryResource: Mappable {
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
    /*
    */
    open var `emergencyCalling`: Bool?
    /*
    */
    open var `numberSelling`: Bool?
    /*
    */
    open var `loginAllowed`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, name: String? = nil, isoCode: String? = nil, callingCode: String? = nil, emergencyCalling: Bool? = nil, numberSelling: Bool? = nil, loginAllowed: Bool? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.name = `name`
        self.isoCode = `isoCode`
        self.callingCode = `callingCode`
        self.emergencyCalling = `emergencyCalling`
        self.numberSelling = `numberSelling`
        self.loginAllowed = `loginAllowed`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `isoCode` <- map["isoCode"]
        `callingCode` <- map["callingCode"]
        `emergencyCalling` <- map["emergencyCalling"]
        `numberSelling` <- map["numberSelling"]
        `loginAllowed` <- map["loginAllowed"]
    }
}
