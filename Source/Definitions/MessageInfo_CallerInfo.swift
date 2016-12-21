import Foundation
import ObjectMapper
import Alamofire
open class MessageInfo_CallerInfo: Mappable {
    // Extension short number (usually 3 or 4 digits). This property is filled when parties communicate by means of short internal numbers, for example when calling to other extension or sending/receiving Company Pager message
    open var `extensionNumber`: String?
    // Contains party location (city, state) if one can be determined from phoneNumber. This property is filled only when phoneNumber is not empty and server can calculate location information from it (for example, this information is unavailable for US toll-free numbers)
    open var `location`: String?
    // Status of a message. Returned for outbound fax messages only
    open var `messageStatus`: String?
    // Fax only. Error code returned in case of fax sending failure. Returned if messageStatus value is 'SendingFailed'
    open var `faxErrorCode`: String?
    // Symbolic name associated with a party. If the phone does not belong to the known extension, only the location is returned, the name is not determined then
    open var `name`: String?
    // Phone number of a party. Usually it is a plain number including country and area code like 18661234567. But sometimes it could be returned from database with some formatting applied, for example (866)123-4567. This property is filled in all cases where parties communicate by means of global phone numbers, for example when calling to direct numbers or sending/receiving SMS
    open var `phoneNumber`: String?
    public init() {
    }
    convenience public init(extensionNumber: String? = nil, location: String? = nil, messageStatus: String? = nil, faxErrorCode: String? = nil, name: String? = nil, phoneNumber: String? = nil) {
        self.init()
        self.extensionNumber = `extensionNumber`
        self.location = `location`
        self.messageStatus = `messageStatus`
        self.faxErrorCode = `faxErrorCode`
        self.name = `name`
        self.phoneNumber = `phoneNumber`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `extensionNumber` <- map["extensionNumber"]
        `location` <- map["location"]
        `messageStatus` <- map["messageStatus"]
        `faxErrorCode` <- map["faxErrorCode"]
        `name` <- map["name"]
        `phoneNumber` <- map["phoneNumber"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
