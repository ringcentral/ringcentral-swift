import Foundation
import ObjectMapper
open class SyncMessages: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `records`: [MessageInfoResource]?
    /*
    */
    open var `syncInfo`: SyncInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, records: [MessageInfoResource]? = nil, syncInfo: SyncInfo? = nil) {
        self.init()
        self.uri = `uri`
        self.records = `records`
        self.syncInfo = `syncInfo`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `records` <- map["records"]
        `syncInfo` <- map["syncInfo"]
    }
}
