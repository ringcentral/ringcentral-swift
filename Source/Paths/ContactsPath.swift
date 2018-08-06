import Foundation
import ObjectMapper
import Alamofire
open class ContactsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "contacts"
        }
    }
    /*
    Returns contact information on corporate users of federated accounts. Please note: 1. User, DigitalUser, VirtualUser and FaxUser types are returned as User type. 2.ApplicationExtension type is not returned. 3. Only extensions in Enabled, Disabled and NotActivated state are returned.
    */
    open func list(callback: @escaping (_ t: DirectoryResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: DirectoryResource?, error) in
            callback(t, error)
        }
    }
    /*
    Returns contact information on corporate users of federated accounts. Please note: 1. User, DigitalUser, VirtualUser and FaxUser types are returned as User type. 2.ApplicationExtension type is not returned. 3. Only extensions in Enabled, Disabled and NotActivated state are returned.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: DirectoryResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: DirectoryResource?, error) in
            callback(t, error)
        }
    }
    /*
    Returns contact information on corporate users of federated accounts. Please note: 1. User, DigitalUser, VirtualUser and FaxUser types are returned as User type. 2.ApplicationExtension type is not returned. 3. Only extensions in Enabled, Disabled and NotActivated state are returned.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: DirectoryResource?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        excludeFederatedContacts
        */
        open var `excludeFederatedContacts`: String?
        /*
        Type of an extension
        */
        open var `type`: String?
        /*
        page
        */
        open var `page`: String?
        /*
        perPage
        */
        open var `perPage`: String?
        /*
        Internal identifier of the business site to which extensions belongs
        */
        open var `siteId`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(excludeFederatedContacts: String? = nil, type: String? = nil, page: String? = nil, perPage: String? = nil, siteId: String? = nil) {
            self.init()
            self.excludeFederatedContacts = `excludeFederatedContacts`
            self.type = `type`
            self.page = `page`
            self.perPage = `perPage`
            self.siteId = `siteId`
        }
        open func mapping(map: Map) {
            `excludeFederatedContacts` <- map["excludeFederatedContacts"]
            `type` <- map["type"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `siteId` <- map["siteId"]
        }
    }
    /*
    Returns contact information on a particular corporate user of a federated account.
    */
    open func get(callback: @escaping (_ t: ContactResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ContactResource?, error) in
            callback(t, error)
        }
    }
}
