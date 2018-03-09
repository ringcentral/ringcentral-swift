import Foundation
import ObjectMapper
open class ParsedNumberResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `originalString`: String?
    /*
    */
    open var `country`: CountryResource?
    /*
    */
    open var `areaCode`: String?
    /*
    */
    open var `subscriberNumber`: String?
    /*
    */
    open var `formattedNational`: String?
    /*
    */
    open var `formattedInternational`: String?
    /*
    */
    open var `dialable`: String?
    /*
    */
    open var `e164`: String?
    /*
    */
    open var `special`: Bool?
    /*
    */
    open var `normalized`: String?
    /*
    */
    open var `tollFree`: Bool?
    /*
    */
    open var `subAddress`: String?
    /*
    */
    open var `dtmfPostfix`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, originalString: String? = nil, country: CountryResource? = nil, areaCode: String? = nil, subscriberNumber: String? = nil, formattedNational: String? = nil, formattedInternational: String? = nil, dialable: String? = nil, e164: String? = nil, special: Bool? = nil, normalized: String? = nil, tollFree: Bool? = nil, subAddress: String? = nil, dtmfPostfix: String? = nil) {
        self.init()
        self.uri = `uri`
        self.originalString = `originalString`
        self.country = `country`
        self.areaCode = `areaCode`
        self.subscriberNumber = `subscriberNumber`
        self.formattedNational = `formattedNational`
        self.formattedInternational = `formattedInternational`
        self.dialable = `dialable`
        self.e164 = `e164`
        self.special = `special`
        self.normalized = `normalized`
        self.tollFree = `tollFree`
        self.subAddress = `subAddress`
        self.dtmfPostfix = `dtmfPostfix`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `originalString` <- map["originalString"]
        `country` <- map["country"]
        `areaCode` <- map["areaCode"]
        `subscriberNumber` <- map["subscriberNumber"]
        `formattedNational` <- map["formattedNational"]
        `formattedInternational` <- map["formattedInternational"]
        `dialable` <- map["dialable"]
        `e164` <- map["e164"]
        `special` <- map["special"]
        `normalized` <- map["normalized"]
        `tollFree` <- map["tollFree"]
        `subAddress` <- map["subAddress"]
        `dtmfPostfix` <- map["dtmfPostfix"]
    }
}
