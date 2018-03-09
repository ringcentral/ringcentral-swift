import Foundation
import ObjectMapper
open class AccessValidationResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `applicationId`: String?
    /*
    */
    open var `endpointId`: String?
    /*
    */
    open var `sessionId`: String?
    /*
    */
    open var `credentialType`: String?
    /*
    */
    open var `scope`: [String]?
    /*
    */
    open var `accountId`: String?
    /*
    */
    open var `extensionId`: String?
    /*
    */
    open var `brandId`: String?
    /*
    */
    open var `tierId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, applicationId: String? = nil, endpointId: String? = nil, sessionId: String? = nil, credentialType: String? = nil, scope: [String]? = nil, accountId: String? = nil, extensionId: String? = nil, brandId: String? = nil, tierId: String? = nil) {
        self.init()
        self.uri = `uri`
        self.applicationId = `applicationId`
        self.endpointId = `endpointId`
        self.sessionId = `sessionId`
        self.credentialType = `credentialType`
        self.scope = `scope`
        self.accountId = `accountId`
        self.extensionId = `extensionId`
        self.brandId = `brandId`
        self.tierId = `tierId`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `applicationId` <- map["applicationId"]
        `endpointId` <- map["endpointId"]
        `sessionId` <- map["sessionId"]
        `credentialType` <- map["credentialType"]
        `scope` <- map["scope"]
        `accountId` <- map["accountId"]
        `extensionId` <- map["extensionId"]
        `brandId` <- map["brandId"]
        `tierId` <- map["tierId"]
    }
}
