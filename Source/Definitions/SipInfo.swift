import Foundation
import ObjectMapper
open class SipInfo: Mappable {
    /*
    */
    open var `transport`: String?
    /*
    */
    open var `certificate`: String?
    /*
    */
    open var `username`: String?
    /*
    */
    open var `password`: String?
    /*
    */
    open var `authorizationId`: String?
    /*
    */
    open var `domain`: String?
    /*
    */
    open var `outboundProxy`: String?
    /*
    */
    open var `wsProxy`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(transport: String? = nil, certificate: String? = nil, username: String? = nil, password: String? = nil, authorizationId: String? = nil, domain: String? = nil, outboundProxy: String? = nil, wsProxy: String? = nil) {
        self.init()
        self.transport = `transport`
        self.certificate = `certificate`
        self.username = `username`
        self.password = `password`
        self.authorizationId = `authorizationId`
        self.domain = `domain`
        self.outboundProxy = `outboundProxy`
        self.wsProxy = `wsProxy`
    }
    open func mapping(map: Map) {
        `transport` <- map["transport"]
        `certificate` <- map["certificate"]
        `username` <- map["username"]
        `password` <- map["password"]
        `authorizationId` <- map["authorizationId"]
        `domain` <- map["domain"]
        `outboundProxy` <- map["outboundProxy"]
        `wsProxy` <- map["wsProxy"]
    }
}
