import Foundation
import ObjectMapper
open class ClientInfoResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `client`: ClientResource?
    /*
    */
    open var `provisioning`: ProvisioningResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, client: ClientResource? = nil, provisioning: ProvisioningResource? = nil) {
        self.init()
        self.uri = `uri`
        self.client = `client`
        self.provisioning = `provisioning`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `client` <- map["client"]
        `provisioning` <- map["provisioning"]
    }
}
