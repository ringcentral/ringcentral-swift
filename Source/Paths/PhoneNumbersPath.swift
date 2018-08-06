import Foundation
import ObjectMapper
import Alamofire
open class PhoneNumbersPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "phone-numbers"
        }
    }
    /*
    Returns the lists of blocked and allowed phone numbers.
    */
    open func list(callback: @escaping (_ t: BlockedAllowedPhoneNumbersList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: BlockedAllowedPhoneNumbersList?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the lists of blocked and allowed phone numbers.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: BlockedAllowedPhoneNumbersList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: BlockedAllowedPhoneNumbersList?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the lists of blocked and allowed phone numbers.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: BlockedAllowedPhoneNumbersList?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        */
        open var `page`: Int?
        /*
        */
        open var `perPage`: Int?
        /*
        */
        open var `status`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(page: Int? = nil, perPage: Int? = nil, status: String? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
            self.status = `status`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `status` <- map["status"]
        }
    }
    /*
    Updates either blocked or allowed phone number list with a new phone number.
    */
    open func post(callback: @escaping (_ t: BlockedAllowedPhoneNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: BlockedAllowedPhoneNumberInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates either blocked or allowed phone number list with a new phone number.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: BlockedAllowedPhoneNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: BlockedAllowedPhoneNumberInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates either blocked or allowed phone number list with a new phone number.
    */
    open func post(parameters: AddBlockedAllowedPhoneNumber, callback: @escaping (_ t: BlockedAllowedPhoneNumberInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    Returns blocked or allowed phone number(s) by their ID(s). Batch request is supported.
    */
    open func get(callback: @escaping (_ t: BlockedAllowedPhoneNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: BlockedAllowedPhoneNumberInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Deletes blocked or allowed phone number(s) by their ID(s). Batch request is supported.
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Updates blocked or allowed phone number(s) by their ID(s). Batch request is supported.
    */
    open func put(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.putString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
