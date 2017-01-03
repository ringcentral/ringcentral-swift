import Foundation
import ObjectMapper
import Alamofire
open class MessageStorePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "message-store"
        }
    }
    open func `content`(_ _id: String? = nil) -> ContentPath {
        return ContentPath(parent: self, _id: _id)
    }
    // Get Message List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Message List
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Message List
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Definition {
        // Specifies the availability status for the resulting messages. Default value is 'Alive'. Multiple values are accepted
        open var `availability`: String?
        // Specifies the conversation identifier for the resulting messages
        open var `conversationId`: Int?
        // The start datetime for resulting messages in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is dateTo minus 24 hours
        open var `dateFrom`: String?
        // The end datetime for resulting messages in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is current time
        open var `dateTo`: String?
        // The direction for the resulting messages. If not specified, both inbound and outbound messages are returned. Multiple values are accepted
        open var `direction`: String?
        // If 'True', then the latest messages per every conversation ID are returned
        open var `distinctConversations`: Bool?
        // The type of the resulting messages. If not specified, all messages without message type filtering are returned. Multiple values are accepted
        open var `messageType`: String?
        // The read status for the resulting messages. Multiple values are accepted
        open var `readStatus`: String?
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default
        open var `perPage`: Int?
        // The phone number. If specified, messages are returned for this particular phone number only
        open var `phoneNumber`: String?
        convenience public init(availability: String? = nil, conversationId: Int? = nil, dateFrom: String? = nil, dateTo: String? = nil, direction: String? = nil, distinctConversations: Bool? = nil, messageType: String? = nil, readStatus: String? = nil, page: Int? = nil, perPage: Int? = nil, phoneNumber: String? = nil) {
            self.init()
            self.availability = `availability`
            self.conversationId = `conversationId`
            self.dateFrom = `dateFrom`
            self.dateTo = `dateTo`
            self.direction = `direction`
            self.distinctConversations = `distinctConversations`
            self.messageType = `messageType`
            self.readStatus = `readStatus`
            self.page = `page`
            self.perPage = `perPage`
            self.phoneNumber = `phoneNumber`
        }
        required public init?(map: Map) {
            super.init(map: map)
        }
        public override init() {
            super.init()
        }
        open override func mapping(map: Map) {
            `availability` <- map["availability"]
            `conversationId` <- map["conversationId"]
            `dateFrom` <- map["dateFrom"]
            `dateTo` <- map["dateTo"]
            `direction` <- map["direction"]
            `distinctConversations` <- map["distinctConversations"]
            `messageType` <- map["messageType"]
            `readStatus` <- map["readStatus"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `phoneNumber` <- map["phoneNumber"]
        }
    }
    open class ListResponse: Definition {
        // List of records with message information
        open var `records`: [MessageInfo]?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        // Information on paging
        open var `paging`: PagingInfo?
        convenience public init(records: [MessageInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
            self.init()
            self.records = `records`
            self.navigation = `navigation`
            self.paging = `paging`
        }
        required public init?(map: Map) {
            super.init(map: map)
        }
        public override init() {
            super.init()
        }
        open override func mapping(map: Map) {
            `records` <- map["records"]
            `navigation` <- map["navigation"]
            `paging` <- map["paging"]
        }
    }
    // Delete Message by ID
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Delete Message by ID
    open func delete(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    // Delete Message by ID
    open func delete(parameters: DeleteParameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        delete(parameters: parameters.toParameters(), callback: callback)
    }
    open class DeleteParameters: Definition {
        // If the value is 'True', then the message is purged immediately with all the attachments. The default value is 'False'
        open var `purge`: Bool?
        // Internal identifier of a message thread
        open var `conversationId`: Int?
        convenience public init(purge: Bool? = nil, conversationId: Int? = nil) {
            self.init()
            self.purge = `purge`
            self.conversationId = `conversationId`
        }
        required public init?(map: Map) {
            super.init(map: map)
        }
        public override init() {
            super.init()
        }
        open override func mapping(map: Map) {
            `purge` <- map["purge"]
            `conversationId` <- map["conversationId"]
        }
    }
    // Get Message by ID
    open func get(callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
    // Update Message by ID
    open func put(callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
    // Update Message by ID
    open func put(parameters: Parameters, callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
    // Update Message by ID
    open func put(parameters: PutParameters, callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    open class PutParameters: Definition {
        // Read status of a message to be changed. Multiple values are accepted
        open var `readStatus`: String?
        convenience public init(readStatus: String? = nil) {
            self.init()
            self.readStatus = `readStatus`
        }
        required public init?(map: Map) {
            super.init(map: map)
        }
        public override init() {
            super.init()
        }
        open override func mapping(map: Map) {
            `readStatus` <- map["readStatus"]
        }
    }
}
