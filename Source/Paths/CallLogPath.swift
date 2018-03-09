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
    <p style='font-style:italic;'>Since 1.0.3 (Release 5.11)</p><p>Returns call log records filtered by the specified parameters.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadCallLog</td><td>Viewing user call logs</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func list(callback: @escaping (_ t: ExtensionCallLogResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ExtensionCallLogResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.3 (Release 5.11)</p><p>Returns call log records filtered by the specified parameters.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadCallLog</td><td>Viewing user call logs</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: ExtensionCallLogResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ExtensionCallLogResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.3 (Release 5.11)</p><p>Returns call log records filtered by the specified parameters.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadCallLog</td><td>Viewing user call logs</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: ExtensionCallLogResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Extension number of a user. If specified, returns call log for a particular extension only. Cannot be specified together with the phoneNumber filter
        */
        open var `extensionNumber`: String?
        /*
        If 'True' then calls from/to blocked numbers are returned. The default value is 'True'
        */
        open var `showBlocked`: Bool?
        /*
        Phone number of a caller/call recipient. If specified, returns all calls (both incoming and outcoming) with the mentioned phone number. Cannot be specified together with the extensionNumber filter
        */
        open var `phoneNumber`: String?
        /*
        The direction for the result records. It is allowed to specify more than one direction. If not specified, both inbound and outbound records are returned. Multiple values are accepted
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
        The default value is 'Simple' for both account and extension call log
        */
        open var `view`: [String]?
        /*
        'True' if only recorded calls have to be returned
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
        Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items). If not specified, the value is '100' by default
        */
        open var `perPage`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(extensionNumber: String? = nil, showBlocked: Bool? = nil, phoneNumber: String? = nil, direction: [String]? = nil, sessionId: String? = nil, type: [String]? = nil, transport: [String]? = nil, view: [String]? = nil, withRecording: Bool? = nil, dateTo: String? = nil, dateFrom: String? = nil, page: Int? = nil, perPage: Int? = nil) {
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
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditCallLog</td><td>Viewing and updating user call logs</td></tr><tr><td class='code'>ReadCallLog</td><td>Viewing user call logs</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditCallLog</td><td>Viewing and updating user call logs</td></tr><tr><td class='code'>ReadCallLog</td><td>Viewing user call logs</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func delete(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditCallLog</td><td>Viewing and updating user call logs</td></tr><tr><td class='code'>ReadCallLog</td><td>Viewing user call logs</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
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
    */
    open func get(callback: @escaping (_ t: UserCallLogRecord?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: UserCallLogRecord?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func get(parameters: Parameters, callback: @escaping (_ t: UserCallLogRecord?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: UserCallLogRecord?, error) in
            callback(t, error)
        }
    }
    /*
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
