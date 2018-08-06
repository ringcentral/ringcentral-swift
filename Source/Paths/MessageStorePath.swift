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
    /*
    Returns the list of messages from an extension mailbox.
    */
    open func list(callback: @escaping (_ t: GetMessageList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetMessageList?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the list of messages from an extension mailbox.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetMessageList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetMessageList?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the list of messages from an extension mailbox.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetMessageList?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Specifies the availability status for the resulting messages. Multiple values are accepted
        */
        open var `availability`: [String]?
        /*
        Specifies the conversation identifier for the resulting messages
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
        The direction for the resulting messages. If not specified, both inbound and outbound messages are returned. Multiple values are accepted
        */
        open var `direction`: [String]?
        /*
        If 'True', then the latest messages per every conversation ID are returned
        */
        open var `distinctConversations`: Bool?
        /*
        The type of the resulting messages. If not specified, all messages without message type filtering are returned. Multiple values are accepted
        */
        open var `messageType`: [String]?
        /*
        The read status for the resulting messages. Multiple values are accepted
        */
        open var `readStatus`: [String]?
        /*
        Indicates the page number to retrieve. Only positive number values are accepted
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items)
        */
        open var `perPage`: Int?
        /*
        The phone number. If specified, messages are returned for this particular phone number only
        */
        open var `phoneNumber`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(availability: [String]? = nil, conversationId: Int? = nil, dateFrom: String? = nil, dateTo: String? = nil, direction: [String]? = nil, distinctConversations: Bool? = nil, messageType: [String]? = nil, readStatus: [String]? = nil, page: Int? = nil, perPage: Int? = nil, phoneNumber: String? = nil) {
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
        open func mapping(map: Map) {
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
    /*
    Deletes conversation(s) by conversation ID(s).
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Deletes conversation(s) by conversation ID(s).
    */
    open func delete(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    Deletes conversation(s) by conversation ID(s).
    */
    open func delete(parameters: DeleteParameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        delete(parameters: parameters.toParameters(), callback: callback)
    }
    open class DeleteParameters: Mappable {
        /*
        */
        open var `conversationId`: [String]?
        /*
        Messages received earlier then the date specified will be deleted. The default value is 'Now'
        */
        open var `dateTo`: String?
        /*
        Type of messages to be deleted
        */
        open var `type`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(conversationId: [String]? = nil, dateTo: String? = nil, type: String? = nil) {
            self.init()
            self.conversationId = `conversationId`
            self.dateTo = `dateTo`
            self.type = `type`
        }
        open func mapping(map: Map) {
            `conversationId` <- map["conversationId"]
            `dateTo` <- map["dateTo"]
            `type` <- map["type"]
        }
    }
    /*
    Returns individual message record(s) by the given message ID(s). The length of inbound messages is unlimited. Batch request is supported.
    */
    open func get(callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetMessageInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Updates message(s) by ID(s). Batch request is supported, see Batch Requests for details. Currently, only the message read status updating is supported.
    */
    open func put(callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: GetMessageInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Updates message(s) by ID(s). Batch request is supported, see Batch Requests for details. Currently, only the message read status updating is supported.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: GetMessageInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Updates message(s) by ID(s). Batch request is supported, see Batch Requests for details. Currently, only the message read status updating is supported.
    */
    open func put(parameters: UpdateMessageRequest, callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
