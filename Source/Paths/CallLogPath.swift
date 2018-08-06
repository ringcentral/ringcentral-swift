import Foundation
import ObjectMapper
import Alamofire
open class CallLogPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "call-log"
        }
    }
    /*
    Returns call log records filtered by parameters specified.
    */
    open func list(callback: @escaping (_ t: ExtensionCallLogResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ExtensionCallLogResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns call log records filtered by parameters specified.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: ExtensionCallLogResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ExtensionCallLogResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns call log records filtered by parameters specified.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: ExtensionCallLogResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Extension number of a user. If specified, returns call log for a particular extension only
        */
        open var `extensionNumber`: String?
        /*
        If 'True' then calls from/to blocked numbers are returned
        */
        open var `showBlocked`: Bool?
        /*
        Phone number of a caller/callee. If specified, returns all calls (both incoming and outcoming) with the phone number specified
        */
        open var `phoneNumber`: String?
        /*
        The direction for the resulting records. If not specified, both inbound and outbound records are returned. Multiple values are accepted
        */
        open var `direction`: [String]?
        /*
        */
        open var `sessionId`: String?
        /*
        Call type of a record. It is allowed to specify more than one type. If not specified, all call types are returned. Multiple values are accepted
        */
        open var `type`: [String]?
        /*
        Call transport type. 'PSTN' specifies that a call leg is initiated from the PSTN network provider; 'VoIP' - from an RC phone. By default this filter is disabled
        */
        open var `transport`: [String]?
        /*
        */
        open var `view`: String?
        /*
        True should be specified to return recorded calls only
        */
        open var `withRecording`: Bool?
        /*
        The end datetime for resulting records in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is current time
        */
        open var `dateTo`: String?
        /*
        The start datetime for resulting records in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is dateTo minus 24 hours
        */
        open var `dateFrom`: String?
        /*
        Indicates the page number to retrieve. Only positive number values are allowed
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items)
        */
        open var `perPage`: Int?
        /*
        If 'True' then deleted calls are returned
        */
        open var `showDeleted`: Bool?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(extensionNumber: String? = nil, showBlocked: Bool? = nil, phoneNumber: String? = nil, direction: [String]? = nil, sessionId: String? = nil, type: [String]? = nil, transport: [String]? = nil, view: String? = nil, withRecording: Bool? = nil, dateTo: String? = nil, dateFrom: String? = nil, page: Int? = nil, perPage: Int? = nil, showDeleted: Bool? = nil) {
            self.init()
            self.extensionNumber = `extensionNumber`
            self.showBlocked = `showBlocked`
            self.phoneNumber = `phoneNumber`
            self.direction = `direction`
            self.sessionId = `sessionId`
            self.type = `type`
            self.transport = `transport`
            self.view = `view`
            self.withRecording = `withRecording`
            self.dateTo = `dateTo`
            self.dateFrom = `dateFrom`
            self.page = `page`
            self.perPage = `perPage`
            self.showDeleted = `showDeleted`
        }
        open func mapping(map: Map) {
            `extensionNumber` <- map["extensionNumber"]
            `showBlocked` <- map["showBlocked"]
            `phoneNumber` <- map["phoneNumber"]
            `direction` <- map["direction"]
            `sessionId` <- map["sessionId"]
            `type` <- map["type"]
            `transport` <- map["transport"]
            `view` <- map["view"]
            `withRecording` <- map["withRecording"]
            `dateTo` <- map["dateTo"]
            `dateFrom` <- map["dateFrom"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `showDeleted` <- map["showDeleted"]
        }
    }
    /*
    Deletes filtered call log records.
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Deletes filtered call log records.
    */
    open func delete(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    Deletes filtered call log records.
    */
    open func delete(parameters: DeleteParameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        delete(parameters: parameters.toParameters(), callback: callback)
    }
    open class DeleteParameters: Mappable {
        /*
        The end datetime for records deletion in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is current time
        */
        open var `dateTo`: String?
        /*
        */
        open var `phoneNumber`: String?
        /*
        */
        open var `extensionNumber`: String?
        /*
        */
        open var `type`: [String]?
        /*
        */
        open var `direction`: [String]?
        /*
        */
        open var `dateFrom`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(dateTo: String? = nil, phoneNumber: String? = nil, extensionNumber: String? = nil, type: [String]? = nil, direction: [String]? = nil, dateFrom: String? = nil) {
            self.init()
            self.dateTo = `dateTo`
            self.phoneNumber = `phoneNumber`
            self.extensionNumber = `extensionNumber`
            self.type = `type`
            self.direction = `direction`
            self.dateFrom = `dateFrom`
        }
        open func mapping(map: Map) {
            `dateTo` <- map["dateTo"]
            `phoneNumber` <- map["phoneNumber"]
            `extensionNumber` <- map["extensionNumber"]
            `type` <- map["type"]
            `direction` <- map["direction"]
            `dateFrom` <- map["dateFrom"]
        }
    }
    /*
    Returns call log records by ID.
    */
    open func get(callback: @escaping (_ t: UserCallLogRecord?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: UserCallLogRecord?, error) in
            callback(t, error)
        }
    }
    /*
    Returns call log records by ID.
    */
    open func get(parameters: Parameters, callback: @escaping (_ t: UserCallLogRecord?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: UserCallLogRecord?, error) in
            callback(t, error)
        }
    }
    /*
    Returns call log records by ID.
    */
    open func get(parameters: GetParameters, callback: @escaping (_ t: UserCallLogRecord?, _ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        /*
        */
        open var `view`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(view: String? = nil) {
            self.init()
            self.view = `view`
        }
        open func mapping(map: Map) {
            `view` <- map["view"]
        }
    }
}
