import Foundation
import ObjectMapper
open class CreateForwardingNumberRequest: Mappable {
    /*
    Forwarding/Call flip phone number
    */
    open var `phoneNumber`: String?
    /*
    Forwarding/Call flip number title
    */
    open var `label`: String?
    /*
    Forwarding/Call flip phone type. If specified, 'label' attribute value is ignored. The default value is 'Other'
    */
    open var `type`: String?
    /*
    Reference to the other extension device. Applicable for 'PhoneLine' type only. Cannot be specified together with 'phoneNumber' parameter.
    */
    open var `device`: CreateForwardingNumberDeviceInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, label: String? = nil, type: String? = nil, device: CreateForwardingNumberDeviceInfo? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.label = `label`
        self.type = `type`
        self.device = `device`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `label` <- map["label"]
        `type` <- map["type"]
        `device` <- map["device"]
    }
}
