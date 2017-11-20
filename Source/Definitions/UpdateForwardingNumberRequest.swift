import Foundation
import ObjectMapper
open class UpdateForwardingNumberRequest: Mappable {
    /*
    Forwarding/Call flip phone number
    */
    open var `phoneNumber`: String?
    /*
    Forwarding/Call flip number title
    */
    open var `label`: String?
    /*
    Number assigned to the call flip phone number, corresponds to the shortcut dial number
    */
    open var `flipNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, label: String? = nil, flipNumber: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.label = `label`
        self.flipNumber = `flipNumber`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `label` <- map["label"]
        `flipNumber` <- map["flipNumber"]
    }
}
