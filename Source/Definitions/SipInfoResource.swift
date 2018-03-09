import Foundation
import ObjectMapper
open class SipInfoResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `domain`: String?
    /*
    */
    open var `outboundProxy`: String?
    /*
    */
    open var `userName`: String?
    /*
    */
    open var `password`: String?
    /*
    */
    open var `authorizationId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, domain: String? = nil, outboundProxy: String? = nil, userName: String? = nil, password: String? = nil, authorizationId: String? = nil) {
        self.init()
        self.uri = `uri`
        self.domain = `domain`
        self.outboundProxy = `outboundProxy`
        self.userName = `userName`
        self.password = `password`
        self.authorizationId = `authorizationId`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `domain` <- map["domain"]
        `outboundProxy` <- map["outboundProxy"]
        `userName` <- map["userName"]
        `password` <- map["password"]
        `authorizationId` <- map["authorizationId"]
    }
}
