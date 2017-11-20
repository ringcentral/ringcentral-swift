import Foundation
import ObjectMapper
open class CallerInfo: Mappable {
    /*
    */
    open var `phoneNumber`: String?
    /*
    */
    open var `extensionNumber`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `location`: String?
    /*
    */
    open var `contact`: PersonalContactResource?
    /*
    */
    open var `messageStatus`: String?
    /*
    */
    open var `faxErrorCode`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, extensionNumber: String? = nil, name: String? = nil, location: String? = nil, contact: PersonalContactResource? = nil, messageStatus: String? = nil, faxErrorCode: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.extensionNumber = `extensionNumber`
        self.name = `name`
        self.location = `location`
        self.contact = `contact`
        self.messageStatus = `messageStatus`
        self.faxErrorCode = `faxErrorCode`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `extensionNumber` <- map["extensionNumber"]
        `name` <- map["name"]
        `location` <- map["location"]
        `contact` <- map["contact"]
        `messageStatus` <- map["messageStatus"]
        `faxErrorCode` <- map["faxErrorCode"]
    }
}
