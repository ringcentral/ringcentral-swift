import Foundation
import ObjectMapper
import Alamofire
open class DevicesPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "devices"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.32 (Release 9.3)</p><p>Returns the list of paging devices assigned to this group.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(callback: @escaping (_ t: PagingOnlyGroupDevices?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: PagingOnlyGroupDevices?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.32 (Release 9.3)</p><p>Returns the list of paging devices assigned to this group.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: PagingOnlyGroupDevices?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: PagingOnlyGroupDevices?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.32 (Release 9.3)</p><p>Returns the list of paging devices assigned to this group.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: PagingOnlyGroupDevices?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
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
        convenience public init(page: Int? = nil, perPage: Int? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
}
