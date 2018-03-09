import Foundation
import ObjectMapper
open class AddressBookSync: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `records`: [PersonalContactResource]?
    /*
    */
    open var `syncInfo`: SyncInfo?
    /*
    */
    open var `nextPageId`: Int?
    /*
    */
    open var `nextPageUri`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, records: [PersonalContactResource]? = nil, syncInfo: SyncInfo? = nil, nextPageId: Int? = nil, nextPageUri: String? = nil) {
        self.init()
        self.uri = `uri`
        self.records = `records`
        self.syncInfo = `syncInfo`
        self.nextPageId = `nextPageId`
        self.nextPageUri = `nextPageUri`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `records` <- map["records"]
        `syncInfo` <- map["syncInfo"]
        `nextPageId` <- map["nextPageId"]
        `nextPageUri` <- map["nextPageUri"]
    }
}
