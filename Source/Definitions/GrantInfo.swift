import Foundation
import ObjectMapper
open class GrantInfo: Mappable {
    /*
    Canonical URI of a grant
    */
    open var `uri`: String?
    /*
    Extension information
    */
    open var `extension`: ExtensionInfoGrants?
    /*
    Specifies if picking up of other extensions' calls is allowed for the extension. If 'Presence' feature is disabled for the given extension, the flag is not returned
    */
    open var `callPickup`: Bool?
    /*
    Specifies if monitoring of other extensions' calls is allowed for the extension. If 'CallMonitoring' feature is disabled for the given extension, the flag is not returned
    */
    open var `callMonitoring`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, extension: ExtensionInfoGrants? = nil, callPickup: Bool? = nil, callMonitoring: Bool? = nil) {
        self.init()
        self.uri = `uri`
        self.extension = `extension`
        self.callPickup = `callPickup`
        self.callMonitoring = `callMonitoring`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `extension` <- map["extension"]
        `callPickup` <- map["callPickup"]
        `callMonitoring` <- map["callMonitoring"]
    }
}
