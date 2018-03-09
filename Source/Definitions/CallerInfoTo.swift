import Foundation
import ObjectMapper
open class CallerInfoTo: Mappable {
    /*
    */
    open var `phoneNumber`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `location`: String?
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
    convenience public init(phoneNumber: String? = nil, name: String? = nil, location: String? = nil, messageStatus: String? = nil, faxErrorCode: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.name = `name`
        self.location = `location`
        self.messageStatus = `messageStatus`
        self.faxErrorCode = `faxErrorCode`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `name` <- map["name"]
        `location` <- map["location"]
        `messageStatus` <- map["messageStatus"]
        `faxErrorCode` <- map["faxErrorCode"]
    }
}
