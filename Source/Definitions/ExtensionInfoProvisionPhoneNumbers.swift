import Foundation
import ObjectMapper
open class ExtensionInfoProvisionPhoneNumbers: Mappable {
    /*
    Internal identifier of an extension
    */
    open var `id`: String?
    /*
    For Partner Applications Internal identifier of an extension created by partner. The RingCentral supports the mapping of accounts and stores the corresponding account ID/extension ID for each partner ID of a client application. In request URIs partner IDs are accepted instead of regular RingCentral native IDs as path parameters using pid = XXX clause. Though in response URIs contain the corresponding account IDs and extension IDs. In all request and response bodies these values are reflected via partnerId attributes of account and extension
    */
    open var `partnerId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, partnerId: String? = nil) {
        self.init()
        self.id = `id`
        self.partnerId = `partnerId`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `partnerId` <- map["partnerId"]
    }
}
