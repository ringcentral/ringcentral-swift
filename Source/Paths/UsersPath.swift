import Foundation
import ObjectMapper
import Alamofire
open class UsersPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "Users"
        }
    }
    /*
    */
    open func get(callback: @escaping (_ t: UserSearchResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: UserSearchResponse?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func get(parameters: Parameters, callback: @escaping (_ t: UserSearchResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: UserSearchResponse?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func get(parameters: GetParameters, callback: @escaping (_ t: UserSearchResponse?, _ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        /*
        only support 'userName' or 'email' filter expressions for now
        */
        open var `filter`: String?
        /*
        start index (1-based)
        */
        open var `startIndex`: Int?
        /*
        page size
        */
        open var `count`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(filter: String? = nil, startIndex: Int? = nil, count: Int? = nil) {
            self.init()
            self.filter = `filter`
            self.startIndex = `startIndex`
            self.count = `count`
        }
        open func mapping(map: Map) {
            `filter` <- map["filter"]
            `startIndex` <- map["startIndex"]
            `count` <- map["count"]
        }
    }
    /*
    */
    open func post(callback: @escaping (_ t: UserResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: UserResponse?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: UserResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: UserResponse?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func post(parameters: User, callback: @escaping (_ t: UserResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    */
    open func put(callback: @escaping (_ t: UserResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: UserResponse?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: UserResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: UserResponse?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func put(parameters: User, callback: @escaping (_ t: UserResponse?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
