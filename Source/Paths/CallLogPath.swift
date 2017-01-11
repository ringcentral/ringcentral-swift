import Foundation
import ObjectMapper
import Alamofire
open class CallLogPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "call-log"
        }
    }
    // Get Account Call Log
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Account Call Log
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Account Call Log
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        // Extension number of a user. If specified, returns call log for a particular extension only. Cannot be specified together with the phoneNumber filter
        open var `extensionNumber`: String?
        // Phone number of a caller/call recipient. If specified, returns all calls (both incoming and outcoming) with the mentioned phone number. Cannot be specified together with the extensionNumber filter
        open var `phoneNumber`: String?
        // The direction for the result records. It is allowed to specify more than one direction. If not specified, both inbound and outbound records are returned. Multiple values are accepted
        open var `direction`: String?
        // Call type of a record. It is allowed to specify more than one type. If not specified, all call types are returned. Multiple values are accepted
        open var `type`: String?
        // The default value is 'Simple' for both account and extension call log
        open var `view`: String?
        // 'True' if only recorded calls have to be returned
        open var `withRecording`: Bool?
        // The start datetime for resulting records in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is dateTo minus 24 hours
        open var `dateFrom`: String?
        // The end datetime for resulting records in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is current time
        open var `dateTo`: String?
        // Indicates the page number to retrieve. Only positive number values are allowed. The default value is '1'
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default.
        open var `perPage`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(extensionNumber: String? = nil, phoneNumber: String? = nil, direction: String? = nil, type: String? = nil, view: String? = nil, withRecording: Bool? = nil, dateFrom: String? = nil, dateTo: String? = nil, page: Int? = nil, perPage: Int? = nil) {
            self.init()
            self.extensionNumber = `extensionNumber`
            self.phoneNumber = `phoneNumber`
            self.direction = `direction`
            self.type = `type`
            self.view = `view`
            self.withRecording = `withRecording`
            self.dateFrom = `dateFrom`
            self.dateTo = `dateTo`
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `extensionNumber` <- map["extensionNumber"]
            `phoneNumber` <- map["phoneNumber"]
            `direction` <- map["direction"]
            `type` <- map["type"]
            `view` <- map["view"]
            `withRecording` <- map["withRecording"]
            `dateFrom` <- map["dateFrom"]
            `dateTo` <- map["dateTo"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
    open class ListResponse: Mappable {
        // Canonical URI
        open var `uri`: String?
        // List of call log records
        open var `records`: [CallLogRecord]?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        // Information on paging
        open var `paging`: PagingInfo?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(uri: String? = nil, records: [CallLogRecord]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
            self.init()
            self.uri = `uri`
            self.records = `records`
            self.navigation = `navigation`
            self.paging = `paging`
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `records` <- map["records"]
            `navigation` <- map["navigation"]
            `paging` <- map["paging"]
        }
    }
    // Get Account Call Log Record by ID
    open func get(callback: @escaping (_ t: CallLogInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: CallLogInfo?, error) in
            callback(t, error)
        }
    }
    // Delete Extension Call Log
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Delete Extension Call Log
    open func delete(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    // Delete Extension Call Log
    open func delete(parameters: DeleteParameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        delete(parameters: parameters.toParameters(), callback: callback)
    }
    open class DeleteParameters: Mappable {
        // The end datetime for records deletion in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is current time
        open var `dateTo`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(dateTo: String? = nil) {
            self.init()
            self.dateTo = `dateTo`
        }
        open func mapping(map: Map) {
            `dateTo` <- map["dateTo"]
        }
    }
}
