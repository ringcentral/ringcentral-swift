import Foundation
import ObjectMapper
open class CallerIdPhoneInfo: Mappable {
    /*
    Internal identifier of a phone number
    */
    open var `id`: String?
    /*
    Link to a phone number resource
    */
    open var `uri`: String?
    /*
    Phone number in E.164 (with '+' sign) format
    */
    open var `phoneNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, phoneNumber: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.phoneNumber = `phoneNumber`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `phoneNumber` <- map["phoneNumber"]
    }
}
