import Foundation
import ObjectMapper
open class PhoneNumberForProvisioningResource: Mappable {
    /*
    */
    open var `phoneNumber`: String?
    /*
    */
    open var `vanityPattern`: String?
    /*
    */
    open var `source`: String?
    /*
    */
    open var `type`: String?
    /*
    */
    open var `usageType`: String?
    /*
    */
    open var `extension`: ExtensionReferenceResource?
    /*
    */
    open var `reservationId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, vanityPattern: String? = nil, source: String? = nil, type: String? = nil, usageType: String? = nil, extension: ExtensionReferenceResource? = nil, reservationId: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.vanityPattern = `vanityPattern`
        self.source = `source`
        self.type = `type`
        self.usageType = `usageType`
        self.extension = `extension`
        self.reservationId = `reservationId`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `vanityPattern` <- map["vanityPattern"]
        `source` <- map["source"]
        `type` <- map["type"]
        `usageType` <- map["usageType"]
        `extension` <- map["extension"]
        `reservationId` <- map["reservationId"]
    }
}
