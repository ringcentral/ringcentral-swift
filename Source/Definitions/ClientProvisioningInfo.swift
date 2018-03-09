import Foundation
import ObjectMapper
open class ClientProvisioningInfo: Mappable {
    /*
    Links to the mobile web and Service Web resources
    */
    open var `webUris`: ClientProvisioningWebUriInfo?
    /*
    Informs client application on the required user action
    */
    open var `hints`: ClientProvisioningHintsInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(webUris: ClientProvisioningWebUriInfo? = nil, hints: ClientProvisioningHintsInfo? = nil) {
        self.init()
        self.webUris = `webUris`
        self.hints = `hints`
    }
    open func mapping(map: Map) {
        `webUris` <- map["webUris"]
        `hints` <- map["hints"]
    }
}
