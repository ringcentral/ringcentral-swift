import Foundation
import ObjectMapper
open class PresencePermissions: Mappable {
    /*
    */
    open var `targetExtensionId`: String?
    /*
    */
    open var `subscriberExtensionId`: String?
    /*
    */
    open var `canReadPresenceStatus`: Bool?
    /*
    */
    open var `canReadPresenceSettings`: Bool?
    /*
    */
    open var `canPickup`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(targetExtensionId: String? = nil, subscriberExtensionId: String? = nil, canReadPresenceStatus: Bool? = nil, canReadPresenceSettings: Bool? = nil, canPickup: Bool? = nil) {
        self.init()
        self.targetExtensionId = `targetExtensionId`
        self.subscriberExtensionId = `subscriberExtensionId`
        self.canReadPresenceStatus = `canReadPresenceStatus`
        self.canReadPresenceSettings = `canReadPresenceSettings`
        self.canPickup = `canPickup`
    }
    open func mapping(map: Map) {
        `targetExtensionId` <- map["targetExtensionId"]
        `subscriberExtensionId` <- map["subscriberExtensionId"]
        `canReadPresenceStatus` <- map["canReadPresenceStatus"]
        `canReadPresenceSettings` <- map["canReadPresenceSettings"]
        `canPickup` <- map["canPickup"]
    }
}
