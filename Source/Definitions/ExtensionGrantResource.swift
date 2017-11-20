import Foundation
import ObjectMapper
open class ExtensionGrantResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `extension`: InlinedExtensionResource?
    /*
    */
    open var `callPickup`: Bool?
    /*
    */
    open var `callMonitoring`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, extension: InlinedExtensionResource? = nil, callPickup: Bool? = nil, callMonitoring: Bool? = nil) {
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
