import Foundation
import ObjectMapper
open class NotificationDeliveryModeRequest: Mappable {
    /*
    Notifications transportation provider name. 'APNS' (Apple Push Notifications Service)
    */
    open var `transportType`: String?
    /*
    Mandatory for 'APNS' and 'WebHook' transport types. For 'APNS' - internal identifier of a device 'device_token' for 'WebHook' - URL of a consumer service (cannot be changed during subscription update)
    */
    open var `address`: String?
    /*
    Optional parameter. Specifies if the message will be encrypted or not. If request contains any presence event filter the value by default is 'True' (even if specified as 'false'). If request contains only message event filters the value by default is 'False'
    */
    open var `encryption`: Bool?
    /*
    For 'PubNub/APNS' and 'PubNub/GCM' transport types. Name of a certificate
    */
    open var `certificateName`: String?
    /*
    For 'PubNub/APNS' and 'PubNub/GCM' transport types. Identifier of a registration
    */
    open var `registrationId`: String?
    /*
    For 'Webhook' transport type. Subscription verification key ensuring data security
    */
    open var `verificationToken`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(transportType: String? = nil, address: String? = nil, encryption: Bool? = nil, certificateName: String? = nil, registrationId: String? = nil, verificationToken: String? = nil) {
        self.init()
        self.transportType = `transportType`
        self.address = `address`
        self.encryption = `encryption`
        self.certificateName = `certificateName`
        self.registrationId = `registrationId`
        self.verificationToken = `verificationToken`
    }
    open func mapping(map: Map) {
        `transportType` <- map["transportType"]
        `address` <- map["address"]
        `encryption` <- map["encryption"]
        `certificateName` <- map["certificateName"]
        `registrationId` <- map["registrationId"]
        `verificationToken` <- map["verificationToken"]
    }
}
