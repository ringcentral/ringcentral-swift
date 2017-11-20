import Foundation
import ObjectMapper
import Alamofire
open class ActiveCallsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "active-calls"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.13 (Release 6.5)</p><p>Returns records of all extension calls that are in progress, ordered by start time in descending order.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadCallLog</td><td>Viewing user call logs</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func list(callback: @escaping (_ t: ExtensionActiveCallsResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ExtensionActiveCallsResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.13 (Release 6.5)</p><p>Returns records of all extension calls that are in progress, ordered by start time in descending order.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadCallLog</td><td>Viewing user call logs</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: ExtensionActiveCallsResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ExtensionActiveCallsResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.13 (Release 6.5)</p><p>Returns records of all extension calls that are in progress, ordered by start time in descending order.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadCallLog</td><td>Viewing user call logs</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: ExtensionActiveCallsResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        The direction for the result records. It is allowed to specify more than one direction. If not specified, both inbound and outbound records are returned. Multiple values are accepted
        */
        open var `direction`: [String]?
        /*
        Call type of a record. It is allowed to specify more than one type. If not specified, all call types are returned. Multiple values are accepted
        */
        open var `type`: [String]?
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
        convenience public init(direction: [String]? = nil, type: [String]? = nil, page: Int? = nil, perPage: Int? = nil) {
            self.init()
            self.direction = `direction`
            self.type = `type`
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `direction` <- map["direction"]
            `type` <- map["type"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
}
