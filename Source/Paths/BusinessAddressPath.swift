import Foundation
import ObjectMapper
import Alamofire
open class BusinessAddressPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "business-address"
        }
    }
    // Get Company Business Address
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetResponse: Mappable {
        // Canonical URI of the business address resource
        open var `uri`: String?
        // Company business name
        open var `company`: String?
        // Company business email address
        open var `email`: String?
        // Company business address
        open var `businessAddress`: BusinessAddressInfo?
        public init() {
        }
        convenience public init(uri: String? = nil, company: String? = nil, email: String? = nil, businessAddress: BusinessAddressInfo? = nil) {
            self.init()
            self.uri = `uri`
            self.company = `company`
            self.email = `email`
            self.businessAddress = `businessAddress`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `company` <- map["company"]
            `email` <- map["email"]
            `businessAddress` <- map["businessAddress"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    // Update Company Business Address
    open func put(callback: @escaping (_ t: PutResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: PutResponse?, error) in
            callback(t, error)
        }
    }
    // Update Company Business Address
    open func put(parameters: Parameters, callback: @escaping (_ t: PutResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: PutResponse?, error) in
            callback(t, error)
        }
    }
    // Update Company Business Address
    open func put(parameters: PutParameters, callback: @escaping (_ t: PutResponse?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    open class PutParameters: Mappable {
        // Company business name
        open var `company`: String?
        // Company business email address
        open var `email`: String?
        // Company business address
        open var `businessAddress`: BusinessAddressInfo?
        public init() {
        }
        convenience public init(company: String? = nil, email: String? = nil, businessAddress: BusinessAddressInfo? = nil) {
            self.init()
            self.company = `company`
            self.email = `email`
            self.businessAddress = `businessAddress`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `company` <- map["company"]
            `email` <- map["email"]
            `businessAddress` <- map["businessAddress"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    open class PutResponse: Mappable {
        // Canonical URI of the business address resource
        open var `uri`: String?
        // Company business name
        open var `company`: String?
        // Company business email address
        open var `email`: String?
        // Company business address
        open var `businessAddress`: BusinessAddressInfo?
        public init() {
        }
        convenience public init(uri: String? = nil, company: String? = nil, email: String? = nil, businessAddress: BusinessAddressInfo? = nil) {
            self.init()
            self.uri = `uri`
            self.company = `company`
            self.email = `email`
            self.businessAddress = `businessAddress`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `company` <- map["company"]
            `email` <- map["email"]
            `businessAddress` <- map["businessAddress"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
}
