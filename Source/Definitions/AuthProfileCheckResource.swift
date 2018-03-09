import Foundation
import ObjectMapper
open class AuthProfileCheckResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `successful`: Bool?
    /*
    */
    open var `details`: ActivePermissionResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, successful: Bool? = nil, details: ActivePermissionResource? = nil) {
        self.init()
        self.uri = `uri`
        self.successful = `successful`
        self.details = `details`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `successful` <- map["successful"]
        `details` <- map["details"]
    }
}
