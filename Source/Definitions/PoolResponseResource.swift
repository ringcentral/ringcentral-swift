import Foundation
import ObjectMapper
open class PoolResponseResource: Mappable {
    /*
    */
    open var `rendererId`: String?
    /*
    */
    open var `messageId`: String?
    /*
    */
    open var `extensionId`: String?
    /*
    */
    open var `extensionNumber`: String?
    /*
    */
    open var `firstName`: String?
    /*
    */
    open var `lastName`: String?
    /*
    */
    open var `street`: String?
    /*
    */
    open var `city`: String?
    /*
    */
    open var `state`: String?
    /*
    */
    open var `zip`: String?
    /*
    */
    open var `country`: String?
    /*
    */
    open var `countryId`: String?
    /*
    */
    open var `companyName`: String?
    /*
    */
    open var `faxNumber`: String?
    /*
    */
    open var `contactPhone`: String?
    /*
    */
    open var `email`: String?
    /*
    */
    open var `languageCode`: String?
    /*
    */
    open var `languageId`: String?
    /*
    */
    open var `footerType`: Double?
    /*
    */
    open var `coverIndex`: Double?
    /*
    */
    open var `coverPageText`: String?
    /*
    */
    open var `sourceFiles`: [File]?
    /*
    */
    open var `messageServers`: [String]?
    /*
    */
    open var `touchInterval`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(rendererId: String? = nil, messageId: String? = nil, extensionId: String? = nil, extensionNumber: String? = nil, firstName: String? = nil, lastName: String? = nil, street: String? = nil, city: String? = nil, state: String? = nil, zip: String? = nil, country: String? = nil, countryId: String? = nil, companyName: String? = nil, faxNumber: String? = nil, contactPhone: String? = nil, email: String? = nil, languageCode: String? = nil, languageId: String? = nil, footerType: Double? = nil, coverIndex: Double? = nil, coverPageText: String? = nil, sourceFiles: [File]? = nil, messageServers: [String]? = nil, touchInterval: Int? = nil) {
        self.init()
        self.rendererId = `rendererId`
        self.messageId = `messageId`
        self.extensionId = `extensionId`
        self.extensionNumber = `extensionNumber`
        self.firstName = `firstName`
        self.lastName = `lastName`
        self.street = `street`
        self.city = `city`
        self.state = `state`
        self.zip = `zip`
        self.country = `country`
        self.countryId = `countryId`
        self.companyName = `companyName`
        self.faxNumber = `faxNumber`
        self.contactPhone = `contactPhone`
        self.email = `email`
        self.languageCode = `languageCode`
        self.languageId = `languageId`
        self.footerType = `footerType`
        self.coverIndex = `coverIndex`
        self.coverPageText = `coverPageText`
        self.sourceFiles = `sourceFiles`
        self.messageServers = `messageServers`
        self.touchInterval = `touchInterval`
    }
    open func mapping(map: Map) {
        `rendererId` <- map["rendererId"]
        `messageId` <- map["messageId"]
        `extensionId` <- map["extensionId"]
        `extensionNumber` <- map["extensionNumber"]
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `street` <- map["street"]
        `city` <- map["city"]
        `state` <- map["state"]
        `zip` <- map["zip"]
        `country` <- map["country"]
        `countryId` <- map["countryId"]
        `companyName` <- map["companyName"]
        `faxNumber` <- map["faxNumber"]
        `contactPhone` <- map["contactPhone"]
        `email` <- map["email"]
        `languageCode` <- map["languageCode"]
        `languageId` <- map["languageId"]
        `footerType` <- map["footerType"]
        `coverIndex` <- map["coverIndex"]
        `coverPageText` <- map["coverPageText"]
        `sourceFiles` <- map["sourceFiles"]
        `messageServers` <- map["messageServers"]
        `touchInterval` <- map["touchInterval"]
    }
}
