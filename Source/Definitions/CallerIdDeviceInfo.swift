import Foundation
import ObjectMapper
open class CallerIdDeviceInfo: Mappable {
    /*
    Internal identifier of a device
    */
    open var `id`: String?
    /*
    Link to a device resource
    */
    open var `uri`: String?
    /*
    Name of a device
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
