import Foundation
import ObjectMapper
import Alamofire
open class MessageSyncPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "message-sync"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.4 (Release 5.13)</p><p>Provides facilities to synchronize mailbox content stored externally with server state.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadMessages</td><td>Viewing user messages</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(callback: @escaping (_ t: GetMessageSyncResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetMessageSyncResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.4 (Release 5.13)</p><p>Provides facilities to synchronize mailbox content stored externally with server state.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadMessages</td><td>Viewing user messages</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetMessageSyncResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetMessageSyncResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.4 (Release 5.13)</p><p>Provides facilities to synchronize mailbox content stored externally with server state.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadMessages</td><td>Viewing user messages</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetMessageSyncResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Conversation identifier for the resulting messages. Meaningful for SMS and Pager messages only.
        */
        open var `conversationId`: Int?
        /*
        The start datetime for resulting messages in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is dateTo minus 24 hours
        */
        open var `dateFrom`: String?
        /*
        The end datetime for resulting messages in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is current time
        */
        open var `dateTo`: String?
        /*
        Direction for the resulting messages. If not specified, both inbound and outbound messages are returned. Multiple values are accepted
        */
        open var `direction`: [String]?
        /*
        If 'True', then the latest messages per every conversation ID are returned
        */
        open var `distinctConversations`: Bool?
        /*
        Type for the resulting messages. If not specified, all types of messages are returned. Multiple values are accepted
        */
        open var `messageType`: [String]?
        /*
        Limits the number of records to be returned (works in combination with dateFrom and dateTo if specified)
        */
        open var `recordCount`: Int?
        /*
        Value of syncToken property of last sync request response
        */
        open var `syncToken`: String?
        /*
        Type of message synchronization
        */
        open var `syncType`: [String]?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(conversationId: Int? = nil, dateFrom: String? = nil, dateTo: String? = nil, direction: [String]? = nil, distinctConversations: Bool? = nil, messageType: [String]? = nil, recordCount: Int? = nil, syncToken: String? = nil, syncType: [String]? = nil) {
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
}
