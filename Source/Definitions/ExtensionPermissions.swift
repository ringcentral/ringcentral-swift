import Foundation
import ObjectMapper
open class ExtensionPermissions: Mappable {
    // Admin permission
    open var `admin`: PermissionInfo?
    // International Calling permission
    open var `internationalCalling`: PermissionInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(admin: PermissionInfo? = nil, internationalCalling: PermissionInfo? = nil) {
        self.init()
        self.admin = `admin`
        self.internationalCalling = `internationalCalling`
    }
    open func mapping(map: Map) {
        `admin` <- map["admin"]
        `internationalCalling` <- map["internationalCalling"]
    }
}
