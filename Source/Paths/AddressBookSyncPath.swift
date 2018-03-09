import Foundation
import ObjectMapper
import Alamofire
open class AddressBookSyncPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "address-book-sync"
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func get(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func get(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func get(parameters: GetParameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        /*
        Type of synchronization. The default value is 'FSync'
        */
        open var `syncType`: [String]?
        /*
        Value of syncToken property of the last sync request response
        */
        open var `syncToken`: String?
        /*
        Number of records per page to be returned. The max number of records is 250, which is also the default. For FSync ??? if the number of records exceeds the parameter value (either specified or default), all of the pages can be retrieved in several requests. For ISync ??? if the number of records exceeds the page size, the number of incoming changes to this number is limited
        */
        open var `perPage`: Int?
        /*
        Internal identifier of a page. It can be obtained from the 'nextPageId' parameter passed in response body
        */
        open var `pageId`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(syncType: [String]? = nil, syncToken: String? = nil, perPage: Int? = nil, pageId: Int? = nil) {
            self.init()
            self.syncType = `syncType`
            self.syncToken = `syncToken`
            self.perPage = `perPage`
            self.pageId = `pageId`
        }
        open func mapping(map: Map) {
            `syncType` <- map["syncType"]
            `syncToken` <- map["syncToken"]
            `perPage` <- map["perPage"]
            `pageId` <- map["pageId"]
        }
    }
}
