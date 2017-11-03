import Foundation
import ObjectMapper
import Alamofire
open class CheckPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "check"
        }
    }
    /*
    Checks if a certain user permission is activated for the particular extension.
    */
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Checks if a certain user permission is activated for the particular extension.
    */
    open func get(parameters: Parameters, callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Checks if a certain user permission is activated for the particular extension.
    */
    open func get(parameters: GetParameters, callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        /*
        Permission to check
        */
        open var `permissionId`: String?
        /*
        Optional. Internal identifier of an extension for which user permissions are to be checked. The default value is the currently logged-in extension
        */
        open var `targetExtensionId`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(permissionId: String? = nil, targetExtensionId: String? = nil) {
            self.init()
            self.permissionId = `permissionId`
            self.targetExtensionId = `targetExtensionId`
        }
        open func mapping(map: Map) {
            `permissionId` <- map["permissionId"]
            `targetExtensionId` <- map["targetExtensionId"]
        }
    }
    open class GetResponse: Mappable {
        /*
        Canonical URI of a permission resource
        */
        open var `uri`: String?
        /*
        Specifies if check result is successful or not
        */
        open var `successful`: Bool?
        /*
        Information on a permission checked. Returned if successful is 'True'
        */
        open var `details`: PermissionDetailsInfo?
        /*
        List of active scopes for permission. Returned if successful is 'True'
        */
        open var `scopes`: [String]?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(uri: String? = nil, successful: Bool? = nil, details: PermissionDetailsInfo? = nil, scopes: [String]? = nil) {
            self.init()
            self.uri = `uri`
            self.successful = `successful`
            self.details = `details`
            self.scopes = `scopes`
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `successful` <- map["successful"]
            `details` <- map["details"]
            `scopes` <- map["scopes"]
        }
    }
}
