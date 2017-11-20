import Foundation
import ObjectMapper
open class AccountResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `serviceInfo`: AccountServiceInfoResource?
    /*
    */
    open var `partnerId`: String?
    /*
    */
    open var `operator`: ExtensionResource?
    /*
    */
    open var `mainNumber`: String?
    /*
    */
    open var `reservationId`: String?
    /*
    */
    open var `sessionId`: String?
    /*
    */
    open var `status`: String?
    /*
    */
    open var `statusInfo`: StatusInfo?
    /*
    */
    open var `signupInfo`: SignupInfoResource?
    /*
    */
    open var `setupWizardState`: String?
    /*
    */
    open var `testerFlags`: [String]?
    /*
    */
    open var `promotionCode`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, serviceInfo: AccountServiceInfoResource? = nil, partnerId: String? = nil, operator: ExtensionResource? = nil, mainNumber: String? = nil, reservationId: String? = nil, sessionId: String? = nil, status: String? = nil, statusInfo: StatusInfo? = nil, signupInfo: SignupInfoResource? = nil, setupWizardState: String? = nil, testerFlags: [String]? = nil, promotionCode: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.serviceInfo = `serviceInfo`
        self.partnerId = `partnerId`
        self.operator = `operator`
        self.mainNumber = `mainNumber`
        self.reservationId = `reservationId`
        self.sessionId = `sessionId`
        self.status = `status`
        self.statusInfo = `statusInfo`
        self.signupInfo = `signupInfo`
        self.setupWizardState = `setupWizardState`
        self.testerFlags = `testerFlags`
        self.promotionCode = `promotionCode`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `serviceInfo` <- map["serviceInfo"]
        `partnerId` <- map["partnerId"]
        `operator` <- map["operator"]
        `mainNumber` <- map["mainNumber"]
        `reservationId` <- map["reservationId"]
        `sessionId` <- map["sessionId"]
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]
        `signupInfo` <- map["signupInfo"]
        `setupWizardState` <- map["setupWizardState"]
        `testerFlags` <- map["testerFlags"]
        `promotionCode` <- map["promotionCode"]
    }
}
