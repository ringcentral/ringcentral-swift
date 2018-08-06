import Foundation
import ObjectMapper
import Alamofire
open class PhoneNumberPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "phone-number"
        }
    }
    /*
    Returns the list of phone numbers that are used by a particular extension, and can be filtered by the phone number type. The returned list contains all numbers which are directly mapped to a given extension plus the features and also company-level numbers which may be used when performing different operations on behalf of this extension.
    */
    open func list(callback: @escaping (_ t: GetExtensionPhoneNumbersResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetExtensionPhoneNumbersResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the list of phone numbers that are used by a particular extension, and can be filtered by the phone number type. The returned list contains all numbers which are directly mapped to a given extension plus the features and also company-level numbers which may be used when performing different operations on behalf of this extension.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetExtensionPhoneNumbersResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetExtensionPhoneNumbersResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the list of phone numbers that are used by a particular extension, and can be filtered by the phone number type. The returned list contains all numbers which are directly mapped to a given extension plus the features and also company-level numbers which may be used when performing different operations on behalf of this extension.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetExtensionPhoneNumbersResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Usage type of a phone number
        */
        open var `usageType`: [String]?
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
        convenience public init(usageType: [String]? = nil, page: Int? = nil, perPage: Int? = nil) {
            self.init()
            self.usageType = `usageType`
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `usageType` <- map["usageType"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
    /*
    Returns the phone number(s) belonging to a certain account or extension by phoneNumberId(s). Batch request is supported.
    */
    open func get(callback: @escaping (_ t: CompanyPhoneNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: CompanyPhoneNumberInfo?, error) in
            callback(t, error)
        }
    }
}
