import Foundation
import ObjectMapper
import Alamofire
open class MessageSyncPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "message-sync"
        }
    }
    // Message Synchronization
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Message Synchronization
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Message Synchronization
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        // Conversation identifier for the resulting messages. Meaningful for SMS and Pager messages only.
        open var `conversationId`: Int?
        // The start datetime for resulting messages in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is dateTo minus 24 hours
        open var `dateFrom`: String?
        // The end datetime for resulting messages in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is current time
        open var `dateTo`: String?
        // Direction for the resulting messages. If not specified, both inbound and outbound messages are returned. Multiple values are accepted
        open var `direction`: String?
        // If 'True', then the latest messages per every conversation ID are returned
        open var `distinctConversations`: Bool?
        // Type for the resulting messages. If not specified, all types of messages are returned. Multiple values are accepted
        open var `messageType`: String?
        // Limits the number of records to be returned (works in combination with dateFrom and dateTo if specified)
        open var `recordCount`: Int?
        // Value of syncToken property of last sync request response
        open var `syncToken`: String?
        // Type of message synchronization
        open var `syncType`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(conversationId: Int? = nil, dateFrom: String? = nil, dateTo: String? = nil, direction: String? = nil, distinctConversations: Bool? = nil, messageType: String? = nil, recordCount: Int? = nil, syncToken: String? = nil, syncType: String? = nil) {
            self.init()
            self.conversationId = `conversationId`
            self.dateFrom = `dateFrom`
            self.dateTo = `dateTo`
            self.direction = `direction`
            self.distinctConversations = `distinctConversations`
            self.messageType = `messageType`
            self.recordCount = `recordCount`
            self.syncToken = `syncToken`
            self.syncType = `syncType`
        }
        open func mapping(map: Map) {
            `conversationId` <- map["conversationId"]
            `dateFrom` <- map["dateFrom"]
            `dateTo` <- map["dateTo"]
            `direction` <- map["direction"]
            `distinctConversations` <- map["distinctConversations"]
            `messageType` <- map["messageType"]
            `recordCount` <- map["recordCount"]
            `syncToken` <- map["syncToken"]
            `syncType` <- map["syncType"]
        }
    }
    open class ListResponse: Mappable {
        // List of message records with synchronization information
        open var `records`: [MessageInfo]?
        // Sync type, token and time
        open var `syncInfo`: SyncInfo?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(records: [MessageInfo]? = nil, syncInfo: SyncInfo? = nil) {
            self.init()
            self.records = `records`
            self.syncInfo = `syncInfo`
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
            `syncInfo` <- map["syncInfo"]
        }
    }
}
