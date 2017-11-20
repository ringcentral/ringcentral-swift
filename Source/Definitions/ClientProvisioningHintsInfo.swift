import Foundation
import ObjectMapper
open class ClientProvisioningHintsInfo: Mappable {
    /*
    Trial account expiration. Returned for trial accounts only
    */
    open var `trialState`: ClientProvisioningHintInfo?
    /*
    User credentials expiration
    */
    open var `userCredentialState`: ClientProvisioningHintInfo?
    /*
    Application version update. Returned only if the client current version is older than the latest version. 'actionRequired': 'true' means the application requires force updating to the latest version
    */
    open var `appVersionUpgrade`: ClientProvisioningHintInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(trialState: ClientProvisioningHintInfo? = nil, userCredentialState: ClientProvisioningHintInfo? = nil, appVersionUpgrade: ClientProvisioningHintInfo? = nil) {
        self.init()
        self.trialState = `trialState`
        self.userCredentialState = `userCredentialState`
        self.appVersionUpgrade = `appVersionUpgrade`
    }
    open func mapping(map: Map) {
        `trialState` <- map["trialState"]
        `userCredentialState` <- map["userCredentialState"]
        `appVersionUpgrade` <- map["appVersionUpgrade"]
    }
}
