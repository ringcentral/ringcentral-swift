import Foundation
import ObjectMapper
open class ExtensionInfoMonitoredLines: Mappable {
    /*
    Internal identifier of a monitored extension
    */
    open var `id`: String?
    /*
    Canonical URI of a monitored extension
    */
    open var `uri`: String?
    /*
    Brief information on a monitored extension
    */
    open var `extensionNumber`: String?
    /*
    Type of a monitored extension
    */
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, extensionNumber: String? = nil, type: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.extensionNumber = `extensionNumber`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
        `type` <- map["type"]
    }
}
