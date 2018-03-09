import Foundation
import ObjectMapper
open class UserPresencePermissionsUpdateRequest: Mappable {
    /*
    */
    open var `extensions`: [PresencePermissionsExtensionInfoRequest]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extensions: [PresencePermissionsExtensionInfoRequest]? = nil) {
        self.init()
        self.extensions = `extensions`
    }
    open func mapping(map: Map) {
        `extensions` <- map["extensions"]
    }
}
