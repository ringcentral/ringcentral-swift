import Foundation
import ObjectMapper
open class ClientProvisioningHintInfo: Mappable {
    /*
    Seconds until expiration date. Returned only if applicable
    */
    open var `expiresIn`: Int?
    /*
    'False', if the value of expiresIn is greater than 0 (zero), otherwise - 'True'
    */
    open var `actionRequired`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(expiresIn: Int? = nil, actionRequired: Bool? = nil) {
        self.init()
        self.expiresIn = `expiresIn`
        self.actionRequired = `actionRequired`
    }
    open func mapping(map: Map) {
        `expiresIn` <- map["expiresIn"]
        `actionRequired` <- map["actionRequired"]
    }
}
