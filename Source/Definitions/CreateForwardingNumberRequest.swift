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
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, label: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.label = `label`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `label` <- map["label"]
    }
}
