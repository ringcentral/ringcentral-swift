import Foundation
import ObjectMapper
open class SyncInfo: Definition {
    // Type of synchronization
    open var `syncType`: String?
    // Synchronization token
    open var `syncToken`: String?
    // Last synchronization datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `syncTime`: String?
    convenience public init(syncType: String? = nil, syncToken: String? = nil, syncTime: String? = nil) {
        self.init()
        self.syncType = `syncType`
        self.syncToken = `syncToken`
        self.syncTime = `syncTime`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `syncType` <- map["syncType"]
        `syncToken` <- map["syncToken"]
        `syncTime` <- map["syncTime"]
    }
}
