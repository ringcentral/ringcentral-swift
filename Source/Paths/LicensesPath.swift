import Foundation
import ObjectMapper
import Alamofire
open class LicensesPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "licenses"
        }
    }
    open func `bulkPurchase`() -> BulkPurchasePath {
        return BulkPurchasePath(parent: self)
    }
    /*
    Returns list of licenses for a specific user.
    */
    open func list(callback: @escaping (_ t: LicenseList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: LicenseList?, error) in
            callback(t, error)
        }
    }
    /*
    Returns list of licenses for a specific user.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: LicenseList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: LicenseList?, error) in
            callback(t, error)
        }
    }
    /*
    Returns list of licenses for a specific user.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: LicenseList?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Indicates the page number to retrieve. Only positive number values are accepted
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items)
        */
        open var `perPage`: Int?
        /*
        Internal identifier of a license type. If not specified account licenses of all types are returned
        */
        open var `typeId`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(page: Int? = nil, perPage: Int? = nil, typeId: Int? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
            self.typeId = `typeId`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `typeId` <- map["typeId"]
        }
    }
    /*
    Returns license information by its ID.
    */
    open func get(callback: @escaping (_ t: LicenseInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: LicenseInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Removes a license for a specific user. Please note: It is not allowed to remove assigned licenses (only Webinars and Large Meetings can be assigned).
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
