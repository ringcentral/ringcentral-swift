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
    Synchronizes user contacts.
    */
    open func list(callback: @escaping (_ t: AddressBookSync?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: AddressBookSync?, error) in
            callback(t, error)
        }
    }
    /*
    Synchronizes user contacts.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: AddressBookSync?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: AddressBookSync?, error) in
            callback(t, error)
        }
    }
    /*
    Synchronizes user contacts.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: AddressBookSync?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Type of synchronization
        */
        open var `syncType`: [String]?
        /*
        Value of syncToken property of the last sync request response
        */
        open var `syncToken`: String?
        /*
        Number of records per page to be returned. The max number of records is 250, which is also the default. For 'FSync' if the number of records exceeds the parameter value (either specified or default), all of the pages can be retrieved in several requests. For 'ISync' if the number of records exceeds the page size, the number of incoming changes to this number is limited
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
