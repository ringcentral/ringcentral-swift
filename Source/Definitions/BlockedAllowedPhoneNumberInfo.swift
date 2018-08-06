import Foundation
import ObjectMapper
open class BlockedAllowedPhoneNumberInfo: Mappable {
    /*
    Link to a blocked/allowed phone number
    */
    open var `uri`: String?
    /*
    Internal identifier of a blocked/allowed phone number
    */
    open var `id`: String?
    /*
    A blocked/allowed phone number in [E.164](https://www.itu.int/rec/T-REC-E.164-201011-I) format
    */
    open var `phoneNumber`: String?
    /*
    Custom name of a blocked/allowed phone number
    */
    open var `label`: String?
    /*
    Status of a phone number
    */
    open var `status`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, phoneNumber: String? = nil, label: String? = nil, status: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.phoneNumber = `phoneNumber`
        self.label = `label`
        self.status = `status`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `phoneNumber` <- map["phoneNumber"]
        `label` <- map["label"]
        `status` <- map["status"]
    }
}
