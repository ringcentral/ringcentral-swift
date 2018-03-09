import Foundation
import ObjectMapper
open class CallLogCallerInfo: Mappable {
    /*
    Phone number of a party. Usually it is a plain number including country and area code like 18661234567. But sometimes it could be returned from database with some formatting applied, for example (866)123-4567. This property is filled in all cases where parties communicate by means of global phone numbers, for example when calling to direct numbers or sending/receiving SMS
    */
    open var `phoneNumber`: String?
    /*
    Extension short number (usually 3 or 4 digits). This property is filled when parties communicate by means of short internal numbers, for example when calling to other extension or sending/receiving Company Pager message
    */
    open var `extensionNumber`: String?
    /*
    Contains party location (city, state) if one can be determined from phoneNumber. This property is filled only when phoneNumber is not empty and server can calculate location information from it (for example, this information is unavailable for US toll-free numbers)
    */
    open var `location`: String?
    /*
    Symbolic name associated with a party. If the phone does not belong to the known extension, only the location is returned, the name is not determined then
    */
    open var `name`: String?
    /*
    */
    open var `device`: CallLogRecordDeviceInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, extensionNumber: String? = nil, location: String? = nil, name: String? = nil, device: CallLogRecordDeviceInfo? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.extensionNumber = `extensionNumber`
        self.location = `location`
        self.name = `name`
        self.device = `device`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `extensionNumber` <- map["extensionNumber"]
        `location` <- map["location"]
        `name` <- map["name"]
        `device` <- map["device"]
    }
}
