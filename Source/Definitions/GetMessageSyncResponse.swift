import Foundation
import ObjectMapper
open class GetMessageSyncResponse: Mappable {
    /*
    List of message records with synchronization information
    */
    open var `records`: [GetMessageInfoResponse]?
    /*
    Sync type, token and time
    */
    open var `syncInfo`: SyncInfoMessages?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(records: [GetMessageInfoResponse]? = nil, syncInfo: SyncInfoMessages? = nil) {
        self.init()
        self.records = `records`
        self.syncInfo = `syncInfo`
    }
    open func mapping(map: Map) {
        `records` <- map["records"]
        `syncInfo` <- map["syncInfo"]
    }
}
