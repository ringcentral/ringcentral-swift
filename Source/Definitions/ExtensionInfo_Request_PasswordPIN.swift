import Foundation
import ObjectMapper
open class ExtensionInfo_Request_PasswordPIN: Definition {
    // Password for extension
    open var `password`: String?
    // IVR PIN
    open var `ivrPin`: String?
    convenience public init(password: String? = nil, ivrPin: String? = nil) {
        self.init()
        self.password = `password`
        self.ivrPin = `ivrPin`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `password` <- map["password"]
        `ivrPin` <- map["ivrPin"]
    }
}
