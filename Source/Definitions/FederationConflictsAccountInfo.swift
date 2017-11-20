import Foundation
import ObjectMapper
open class FederationConflictsAccountInfo: Mappable {
    /*
    Internal identifier of an account
    */
    open var `id`: String?
    /*
    Federated name of an account
    */
    open var `federatedName`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, federatedName: String? = nil) {
        self.init()
        self.id = `id`
        self.federatedName = `federatedName`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `federatedName` <- map["federatedName"]
    }
}
