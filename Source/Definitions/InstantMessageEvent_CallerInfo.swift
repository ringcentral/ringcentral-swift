import Foundation
import ObjectMapper
open class InstantMessageEvent_CallerInfo: Mappable {
    /*
    Phone number in E.164 (with '+' sign) format
    */
    open var `phoneNumber`: String?
    /*
    Extension number
    */
    open var `extensionNumber`: String?
    /*
    Contains party location (city, state) if one can be determined from phoneNumber. This property is filled only when phoneNumber is not empty and server can calculate location information from it (for example, this information is unavailable for US toll-free numbers)
    */
    open var `location`: String?
    /*
    Symbolic name associated with a caller/callee. If the phone does not belong to the known extension, only the location is returned, the name is not determined then
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, extensionNumber: String? = nil, location: String? = nil, name: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.extensionNumber = `extensionNumber`
        self.location = `location`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `extensionNumber` <- map["extensionNumber"]
        `location` <- map["location"]
        `name` <- map["name"]
    }
}
