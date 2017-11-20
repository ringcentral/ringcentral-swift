import Foundation
import ObjectMapper
open class DeviceOrder: Mappable {
    /*
    Identifier of a device
    */
    open var `id`: String?
    /*
    Canonical URI of an order resource
    */
    open var `uri`: String?
    /*
    List of devices ordered
    */
    open var `devices`: [DeviceResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, devices: [DeviceResource]? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.devices = `devices`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `devices` <- map["devices"]
    }
}
