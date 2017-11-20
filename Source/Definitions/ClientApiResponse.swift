import Foundation
import ObjectMapper
open class ClientApiResponse: Mappable {
    /*
    Client application information
    */
    open var `client`: ClientApplicationInfo?
    /*
    Provisioning parameters. Available for the  detected  applications only
    */
    open var `provisioning`: ClientProvisioningInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(client: ClientApplicationInfo? = nil, provisioning: ClientProvisioningInfo? = nil) {
        self.init()
        self.client = `client`
        self.provisioning = `provisioning`
    }
    open func mapping(map: Map) {
        `client` <- map["client"]
        `provisioning` <- map["provisioning"]
    }
}
