import Foundation
import ObjectMapper
open class SIPInfoResponse: Mappable {
    /*
    User credentials
    */
    open var `username`: String?
    /*
    User password
    */
    open var `password`: String?
    /*
    Identifier for SIP authorization
    */
    open var `authorizationId`: String?
    /*
    SIP domain
    */
    open var `domain`: String?
    /*
    SIP outbound proxy
    */
    open var `outboundProxy`: String?
    /*
    Preferred transport. SIP info will be returned for this transport if supported
    */
    open var `transport`: String?
    /*
    For TLS transport only Base64 encoded certificate
    */
    open var `certificate`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(username: String? = nil, password: String? = nil, authorizationId: String? = nil, domain: String? = nil, outboundProxy: String? = nil, transport: String? = nil, certificate: String? = nil) {
        self.init()
        self.username = `username`
        self.password = `password`
        self.authorizationId = `authorizationId`
        self.domain = `domain`
        self.outboundProxy = `outboundProxy`
        self.transport = `transport`
        self.certificate = `certificate`
    }
    open func mapping(map: Map) {
        `username` <- map["username"]
        `password` <- map["password"]
        `authorizationId` <- map["authorizationId"]
        `domain` <- map["domain"]
        `outboundProxy` <- map["outboundProxy"]
        `transport` <- map["transport"]
        `certificate` <- map["certificate"]
    }
}
