import Foundation
import ObjectMapper
open class WebUrisResource: Mappable {
    /*
    */
    open var `expressSetupMobile`: String?
    /*
    */
    open var `signUp`: String?
    /*
    */
    open var `support`: String?
    /*
    */
    open var `meetingsAppDownload`: String?
    /*
    */
    open var `mobileWebUsers`: String?
    /*
    */
    open var `mobileWebBilling`: String?
    /*
    */
    open var `mobileWebPhoneSystem`: String?
    /*
    */
    open var `mobileWebUserSettings`: String?
    /*
    */
    open var `mobileWebTellAFriend`: String?
    /*
    */
    open var `mobileWebChangePassword`: String?
    /*
    */
    open var `mobileWebInternationalCalling`: String?
    /*
    */
    open var `mobileWebCallHandling`: String?
    /*
    */
    open var `mobileWebNotifications`: String?
    /*
    */
    open var `mobileWebReporting`: String?
    /*
    */
    open var `mobileWebResetPassword`: String?
    /*
    */
    open var `mobileWebTrialUpgrade`: String?
    /*
    */
    open var `serviceWebHome`: String?
    /*
    */
    open var `serviceWebPhoneSystem`: String?
    /*
    */
    open var `serviceWebUserSettings`: String?
    /*
    */
    open var `serviceWebBilling`: String?
    /*
    */
    open var `serviceWebTellAFriend`: String?
    /*
    */
    open var `serviceWebChangePassword`: String?
    /*
    */
    open var `serviceWebResetPassword`: String?
    /*
    */
    open var `appDownload`: String?
    /*
    */
    open var `appDownloadFile`: String?
    /*
    */
    open var `expiresIn`: Int?
    /*
    */
    open var `eula`: String?
    /*
    */
    open var `emergencyDisclaimer`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(expressSetupMobile: String? = nil, signUp: String? = nil, support: String? = nil, meetingsAppDownload: String? = nil, mobileWebUsers: String? = nil, mobileWebBilling: String? = nil, mobileWebPhoneSystem: String? = nil, mobileWebUserSettings: String? = nil, mobileWebTellAFriend: String? = nil, mobileWebChangePassword: String? = nil, mobileWebInternationalCalling: String? = nil, mobileWebCallHandling: String? = nil, mobileWebNotifications: String? = nil, mobileWebReporting: String? = nil, mobileWebResetPassword: String? = nil, mobileWebTrialUpgrade: String? = nil, serviceWebHome: String? = nil, serviceWebPhoneSystem: String? = nil, serviceWebUserSettings: String? = nil, serviceWebBilling: String? = nil, serviceWebTellAFriend: String? = nil, serviceWebChangePassword: String? = nil, serviceWebResetPassword: String? = nil, appDownload: String? = nil, appDownloadFile: String? = nil, expiresIn: Int? = nil, eula: String? = nil, emergencyDisclaimer: String? = nil) {
        self.init()
        self.expressSetupMobile = `expressSetupMobile`
        self.signUp = `signUp`
        self.support = `support`
        self.meetingsAppDownload = `meetingsAppDownload`
        self.mobileWebUsers = `mobileWebUsers`
        self.mobileWebBilling = `mobileWebBilling`
        self.mobileWebPhoneSystem = `mobileWebPhoneSystem`
        self.mobileWebUserSettings = `mobileWebUserSettings`
        self.mobileWebTellAFriend = `mobileWebTellAFriend`
        self.mobileWebChangePassword = `mobileWebChangePassword`
        self.mobileWebInternationalCalling = `mobileWebInternationalCalling`
        self.mobileWebCallHandling = `mobileWebCallHandling`
        self.mobileWebNotifications = `mobileWebNotifications`
        self.mobileWebReporting = `mobileWebReporting`
        self.mobileWebResetPassword = `mobileWebResetPassword`
        self.mobileWebTrialUpgrade = `mobileWebTrialUpgrade`
        self.serviceWebHome = `serviceWebHome`
        self.serviceWebPhoneSystem = `serviceWebPhoneSystem`
        self.serviceWebUserSettings = `serviceWebUserSettings`
        self.serviceWebBilling = `serviceWebBilling`
        self.serviceWebTellAFriend = `serviceWebTellAFriend`
        self.serviceWebChangePassword = `serviceWebChangePassword`
        self.serviceWebResetPassword = `serviceWebResetPassword`
        self.appDownload = `appDownload`
        self.appDownloadFile = `appDownloadFile`
        self.expiresIn = `expiresIn`
        self.eula = `eula`
        self.emergencyDisclaimer = `emergencyDisclaimer`
    }
    open func mapping(map: Map) {
        `expressSetupMobile` <- map["expressSetupMobile"]
        `signUp` <- map["signUp"]
        `support` <- map["support"]
        `meetingsAppDownload` <- map["meetingsAppDownload"]
        `mobileWebUsers` <- map["mobileWebUsers"]
        `mobileWebBilling` <- map["mobileWebBilling"]
        `mobileWebPhoneSystem` <- map["mobileWebPhoneSystem"]
        `mobileWebUserSettings` <- map["mobileWebUserSettings"]
        `mobileWebTellAFriend` <- map["mobileWebTellAFriend"]
        `mobileWebChangePassword` <- map["mobileWebChangePassword"]
        `mobileWebInternationalCalling` <- map["mobileWebInternationalCalling"]
        `mobileWebCallHandling` <- map["mobileWebCallHandling"]
        `mobileWebNotifications` <- map["mobileWebNotifications"]
        `mobileWebReporting` <- map["mobileWebReporting"]
        `mobileWebResetPassword` <- map["mobileWebResetPassword"]
        `mobileWebTrialUpgrade` <- map["mobileWebTrialUpgrade"]
        `serviceWebHome` <- map["serviceWebHome"]
        `serviceWebPhoneSystem` <- map["serviceWebPhoneSystem"]
        `serviceWebUserSettings` <- map["serviceWebUserSettings"]
        `serviceWebBilling` <- map["serviceWebBilling"]
        `serviceWebTellAFriend` <- map["serviceWebTellAFriend"]
        `serviceWebChangePassword` <- map["serviceWebChangePassword"]
        `serviceWebResetPassword` <- map["serviceWebResetPassword"]
        `appDownload` <- map["appDownload"]
        `appDownloadFile` <- map["appDownloadFile"]
        `expiresIn` <- map["expiresIn"]
        `eula` <- map["eula"]
        `emergencyDisclaimer` <- map["emergencyDisclaimer"]
    }
}
