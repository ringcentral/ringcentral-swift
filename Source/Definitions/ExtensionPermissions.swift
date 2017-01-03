import Foundation
import ObjectMapper
open class ExtensionPermissions: Definition {
    // Admin permission
    open var `admin`: PermissionInfo?
    // International Calling permission
    open var `internationalCalling`: PermissionInfo?
    convenience public init(admin: PermissionInfo? = nil, internationalCalling: PermissionInfo? = nil) {
        self.init()
        self.admin = `admin`
        self.internationalCalling = `internationalCalling`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `admin` <- map["admin"]
        `internationalCalling` <- map["internationalCalling"]
    }
}
