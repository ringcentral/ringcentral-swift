import Foundation
import ObjectMapper
open class CallLogSync: Mappable {
    /*
    List of call log records with synchronization information. For ISync the total number of returned records is limited to 250; this includes both new records and the old ones, specified by the recordCount parameter
    */
    open var `records`: [CallLogRecord]?
    /*
    Sync information (type, token and time)
    */
    open var `syncInfo`: SyncInfoCallLog?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(records: [CallLogRecord]? = nil, syncInfo: SyncInfoCallLog? = nil) {
        self.init()
        self.records = `records`
        self.syncInfo = `syncInfo`
    }
    open func mapping(map: Map) {
        `records` <- map["records"]
        `syncInfo` <- map["syncInfo"]
    }
}
