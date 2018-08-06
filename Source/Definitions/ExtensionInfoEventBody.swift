import Foundation
import ObjectMapper
open class ExtensionInfoEventBody: Mappable {
    /*
    Internal identifier of an extension
    */
    open var `extensionId`: String?
    /*
    Type of extension info change
    */
    open var `eventType`: String?
    /*
    Returned for 'Update' event type only. The possible values are: /nAccountInfo - change of account parameters/nExtensionInfo - change of contact info, service features, departments, status/nPhoneNumber - change of phone numbers/nRole - change of permissions/nProfileImage - change of profile image
    */
    open var `hints`: [String]?
    /*
    Internal identifier of a subscription owner extension
    */
    open var `ownerId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extensionId: String? = nil, eventType: String? = nil, hints: [String]? = nil, ownerId: String? = nil) {
        self.init()
        self.extensionId = `extensionId`
        self.eventType = `eventType`
        self.hints = `hints`
        self.ownerId = `ownerId`
    }
    open func mapping(map: Map) {
        `extensionId` <- map["extensionId"]
        `eventType` <- map["eventType"]
        `hints` <- map["hints"]
        `ownerId` <- map["ownerId"]
    }
}
