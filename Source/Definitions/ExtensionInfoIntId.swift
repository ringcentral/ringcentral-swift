import Foundation
import ObjectMapper
open class ExtensionInfoIntId: Mappable {
    /*
    Internal identifier of an extension
    */
    open var `id`: Int?
    /*
    Canonical URI of an extension
    */
    open var `uri`: String?
    /*
    Number of department extension
    */
    open var `extensionNumber`: String?
    /*
    For Partner Applications Internal identifier of an extension created by partner. The RingCentral supports the mapping of accounts and stores the corresponding account ID/extension ID for each partner ID of a client application. In request URIs partner IDs are accepted instead of regular RingCentral native IDs as path parameters using pid = XXX clause. Though in response URIs contain the corresponding account IDs and extension IDs. In all request and response bodies these values are reflected via partnerId attributes of account and extension
    */
    open var `partnerId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: Int? = nil, uri: String? = nil, extensionNumber: String? = nil, partnerId: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.extensionNumber = `extensionNumber`
        self.partnerId = `partnerId`
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
        `partnerId` <- map["partnerId"]
    }
}
