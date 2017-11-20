import Foundation
import ObjectMapper
open class SyncInfo: Mappable {
    /*
    */
    open var `syncType`: String?
    /*
    */
    open var `syncToken`: String?
    /*
    */
    open var `syncTime`: String?
    /*
    */
    open var `olderRecordsExist`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(syncType: String? = nil, syncToken: String? = nil, syncTime: String? = nil, olderRecordsExist: Bool? = nil) {
        self.init()
        self.syncType = `syncType`
        self.syncToken = `syncToken`
        self.syncTime = `syncTime`
        self.olderRecordsExist = `olderRecordsExist`
    }
    open func mapping(map: Map) {
        `syncType` <- map["syncType"]
        `syncToken` <- map["syncToken"]
        `syncTime` <- map["syncTime"]
        `olderRecordsExist` <- map["olderRecordsExist"]
    }
}
