import Foundation
import ObjectMapper
open class ExtensionInfo_Request_PasswordPIN: Mappable {
    /*
    Password for extension
    */
    open var `password`: String?
    /*
    IVR PIN
    */
    open var `ivrPin`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(password: String? = nil, ivrPin: String? = nil) {
        self.init()
        self.password = `password`
        self.ivrPin = `ivrPin`
    }
    open func mapping(map: Map) {
        `password` <- map["password"]
        `ivrPin` <- map["ivrPin"]
    }
}
