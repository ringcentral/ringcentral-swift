import Foundation
import ObjectMapper
open class SyncCallLogRecords: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `records`: [CallLogRecordResource]?
    /*
    */
    open var `syncInfo`: SyncInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, records: [CallLogRecordResource]? = nil, syncInfo: SyncInfo? = nil) {
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
