import Foundation
import ObjectMapper
import Alamofire
open class CallLogSyncPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "call-log-sync"
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadCallLog</td><td>Viewing user call logs</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func get(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadCallLog</td><td>Viewing user call logs</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func get(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadCallLog</td><td>Viewing user call logs</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func get(parameters: GetParameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        /*
        Type of synchronization. 'FSync' is a default value
        */
        open var `syncType`: [String]?
        /*
        Value of syncToken property of last sync request response
        */
        open var `syncToken`: String?
        /*
        The start datetime for resulting records in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is the current moment
        */
        open var `dateFrom`: String?
        /*
        ForT?FSync the parameter is mandatory, it limits the number of records to be returned in response. For ISync it specifies with how many records to extend sync Frame to the past, the maximum number of records is 250
        */
        open var `recordCount`: Int?
        /*
        Type of calls to be returned. The default value is 'All'
        */
        open var `statusGroup`: [String]?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(syncType: [String]? = nil, syncToken: String? = nil, dateFrom: String? = nil, recordCount: Int? = nil, statusGroup: [String]? = nil) {
            self.init()
            self.syncType = `syncType`
            self.syncToken = `syncToken`
            self.dateFrom = `dateFrom`
            self.recordCount = `recordCount`
            self.statusGroup = `statusGroup`
        }
        open func mapping(map: Map) {
            `syncType` <- map["syncType"]
            `syncToken` <- map["syncToken"]
            `dateFrom` <- map["dateFrom"]
            `recordCount` <- map["recordCount"]
            `statusGroup` <- map["statusGroup"]
        }
    }
}
