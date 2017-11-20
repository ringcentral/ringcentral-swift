import Foundation
import ObjectMapper
open class SessionsResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `records`: [VersionedResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, records: [VersionedResource]? = nil) {
        self.init()
        self.uri = `uri`
        self.records = `records`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `records` <- map["records"]
    }
}
