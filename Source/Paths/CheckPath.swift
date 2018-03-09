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
    */
    open func get(callback: @escaping (_ t: AuthProfileCheckResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: AuthProfileCheckResource?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func get(parameters: Parameters, callback: @escaping (_ t: AuthProfileCheckResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: AuthProfileCheckResource?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func get(parameters: GetParameters, callback: @escaping (_ t: AuthProfileCheckResource?, _ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        /*
        */
        open var `permissionId`: String?
        /*
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
}
