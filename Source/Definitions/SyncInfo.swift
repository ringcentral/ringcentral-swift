import Foundation
import ObjectMapper
open class SyncInfo: Mappable {
    // Type of synchronization
    open var `syncType`: String?
    // Synchronization token
    open var `syncToken`: String?
    // Last synchronization datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `syncTime`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(syncType: String? = nil, syncToken: String? = nil, syncTime: String? = nil) {
        self.init()
        self.syncType = `syncType`
        self.syncToken = `syncToken`
        self.syncTime = `syncTime`
    }
    open func mapping(map: Map) {
        `syncType` <- map["syncType"]
        `syncToken` <- map["syncToken"]
        `syncTime` <- map["syncTime"]
    }
}
