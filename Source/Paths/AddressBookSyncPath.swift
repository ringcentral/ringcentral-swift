import Foundation
import ObjectMapper
import Alamofire
open class AddressBookSyncPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "address-book-sync"
        }
    }
    // Contacts Synchronization
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Contacts Synchronization
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Contacts Synchronization
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        // Type of synchronization. The default value is 'FSync'
        open var `syncType`: String?
        // Value of syncToken property of the last sync request response
        open var `syncToken`: String?
        // Number of records per page to be returned. The max number of records is 250, which is also the default. For FSync — if the number of records exceeds the parameter value (either specified or default), all of the pages can be retrieved in several requests. For ISync — if the number of records exceeds the page size, the number of incoming changes to this number is limited
        open var `perPage`: Int?
        // Internal identifier of a page. It can be obtained from the 'nextPageId' parameter passed in response body
        open var `pageId`: Int?
        public init() {
        }
        convenience public init(syncType: String? = nil, syncToken: String? = nil, perPage: Int? = nil, pageId: Int? = nil) {
            self.init()
            self.syncType = `syncType`
            self.syncToken = `syncToken`
            self.perPage = `perPage`
            self.pageId = `pageId`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `syncType` <- map["syncType"]
            `syncToken` <- map["syncToken"]
            `perPage` <- map["perPage"]
            `pageId` <- map["pageId"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    open class ListResponse: Mappable {
        // List of contacts with synchronization information
        open var `records`: [PersonalContactInfo]?
        // Sync type, token and time
        open var `syncInfo`: SyncInfo?
        // Internal identifier of the next page, if any
        open var `nextPageId`: Int?
        // URL of the next page, if any
        open var `nextPageUri`: String?
        public init() {
        }
        convenience public init(records: [PersonalContactInfo]? = nil, syncInfo: SyncInfo? = nil, nextPageId: Int? = nil, nextPageUri: String? = nil) {
            self.init()
            self.records = `records`
            self.syncInfo = `syncInfo`
            self.nextPageId = `nextPageId`
            self.nextPageUri = `nextPageUri`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
            `syncInfo` <- map["syncInfo"]
            `nextPageId` <- map["nextPageId"]
            `nextPageUri` <- map["nextPageUri"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
}
