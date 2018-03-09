import Foundation
import ObjectMapper
open class LineInfo: Mappable {
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
    open var `extension`: ExtensionInfoMonitoredLines?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, extension: ExtensionInfoMonitoredLines? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.extension = `extension`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `extension` <- map["extension"]
    }
}
