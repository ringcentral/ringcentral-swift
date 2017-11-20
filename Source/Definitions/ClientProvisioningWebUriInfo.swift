import Foundation
import ObjectMapper
open class ClientProvisioningWebUriInfo: Mappable {
    /*
    Link to web page with the application description. Returned if the application needs to be updated, together with the appVersionUpgrade hint
    */
    open var `appDownload`: String?
    /*
    Link to the application distributive package. Returned if the application needs to be updated, together with the appVersionUpgrade hint
    */
    open var `appDownloadFile`: String?
    /*
    Link to express setup page (mobile application)
    */
    open var `expressSetupMobile`: String?
    /*
    Link to the RC Meetings application distributive package
    */
    open var `meetingsAppDownload`: String?
    /*
    Link to billing page (mobile application)
    */
    open var `mobileWebBilling`: String?
    /*
    Link to call handling page (mobile application)
    */
    open var `mobileWebCallHandling`: String?
    /*
    Link to international calling page (mobile application)
    */
    open var `mobileWebInternationalCalling`: String?
    /*
    Link to notifications page (mobile application)
    */
    open var `mobileWebNotifications`: String?
    /*
    Link to phone system settings page (mobile application)
    */
    open var `mobileWebPhoneSystem`: String?
    /*
    Link to reports page (mobile application)
    */
    open var `mobileWebReporting`: String?
    /*
    Link to reset password page (mobile application)
    */
    open var `mobileWebResetPassword`: String?
    /*
    Link to  Tell A Friend  page (mobile application)
    */
    open var `mobileWebTellAFriend`: String?
    /*
    Link to upgrade trial account (mobile application)
    */
    open var `mobileWebTrialUpgrade`: String?
    /*
    Link to user settings page (mobile application)
    */
    open var `mobileWebUserSettings`: String?
    /*
    Link to billing page (web application)
    */
    open var `serviceWebBilling`: String?
    /*
    Link to home page (web application)
    */
    open var `serviceWebHome`: String?
    /*
    Link to phone system settings page (web application)
    */
    open var `serviceWebPhoneSystem`: String?
    /*
    Link to reset password page (web application)
    */
    open var `serviceWebResetPassword`: String?
    /*
    Link to  Tell A Friend  page (web application)
    */
    open var `serviceWebTellAFriend`: String?
    /*
    Link to user settings page (web application)
    */
    open var `serviceWebUserSettings`: String?
    /*
    Link to sign up page (web application)
    */
    open var `signUp`: String?
    /*
    Link to support page (web application)
    */
    open var `support`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(appDownload: String? = nil, appDownloadFile: String? = nil, expressSetupMobile: String? = nil, meetingsAppDownload: String? = nil, mobileWebBilling: String? = nil, mobileWebCallHandling: String? = nil, mobileWebInternationalCalling: String? = nil, mobileWebNotifications: String? = nil, mobileWebPhoneSystem: String? = nil, mobileWebReporting: String? = nil, mobileWebResetPassword: String? = nil, mobileWebTellAFriend: String? = nil, mobileWebTrialUpgrade: String? = nil, mobileWebUserSettings: String? = nil, serviceWebBilling: String? = nil, serviceWebHome: String? = nil, serviceWebPhoneSystem: String? = nil, serviceWebResetPassword: String? = nil, serviceWebTellAFriend: String? = nil, serviceWebUserSettings: String? = nil, signUp: String? = nil, support: String? = nil) {
        self.init()
        self.appDownload = `appDownload`
        self.appDownloadFile = `appDownloadFile`
        self.expressSetupMobile = `expressSetupMobile`
        self.meetingsAppDownload = `meetingsAppDownload`
        self.mobileWebBilling = `mobileWebBilling`
        self.mobileWebCallHandling = `mobileWebCallHandling`
        self.mobileWebInternationalCalling = `mobileWebInternationalCalling`
        self.mobileWebNotifications = `mobileWebNotifications`
        self.mobileWebPhoneSystem = `mobileWebPhoneSystem`
        self.mobileWebReporting = `mobileWebReporting`
        self.mobileWebResetPassword = `mobileWebResetPassword`
        self.mobileWebTellAFriend = `mobileWebTellAFriend`
        self.mobileWebTrialUpgrade = `mobileWebTrialUpgrade`
        self.mobileWebUserSettings = `mobileWebUserSettings`
        self.serviceWebBilling = `serviceWebBilling`
        self.serviceWebHome = `serviceWebHome`
        self.serviceWebPhoneSystem = `serviceWebPhoneSystem`
        self.serviceWebResetPassword = `serviceWebResetPassword`
        self.serviceWebTellAFriend = `serviceWebTellAFriend`
        self.serviceWebUserSettings = `serviceWebUserSettings`
        self.signUp = `signUp`
        self.support = `support`
    }
    open func mapping(map: Map) {
        `appDownload` <- map["appDownload"]
        `appDownloadFile` <- map["appDownloadFile"]
        `expressSetupMobile` <- map["expressSetupMobile"]
        `meetingsAppDownload` <- map["meetingsAppDownload"]
        `mobileWebBilling` <- map["mobileWebBilling"]
        `mobileWebCallHandling` <- map["mobileWebCallHandling"]
        `mobileWebInternationalCalling` <- map["mobileWebInternationalCalling"]
        `mobileWebNotifications` <- map["mobileWebNotifications"]
        `mobileWebPhoneSystem` <- map["mobileWebPhoneSystem"]
        `mobileWebReporting` <- map["mobileWebReporting"]
        `mobileWebResetPassword` <- map["mobileWebResetPassword"]
        `mobileWebTellAFriend` <- map["mobileWebTellAFriend"]
        `mobileWebTrialUpgrade` <- map["mobileWebTrialUpgrade"]
        `mobileWebUserSettings` <- map["mobileWebUserSettings"]
        `serviceWebBilling` <- map["serviceWebBilling"]
        `serviceWebHome` <- map["serviceWebHome"]
        `serviceWebPhoneSystem` <- map["serviceWebPhoneSystem"]
        `serviceWebResetPassword` <- map["serviceWebResetPassword"]
        `serviceWebTellAFriend` <- map["serviceWebTellAFriend"]
        `serviceWebUserSettings` <- map["serviceWebUserSettings"]
        `signUp` <- map["signUp"]
        `support` <- map["support"]
    }
}
