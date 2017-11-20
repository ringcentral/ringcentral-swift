import Foundation
import ObjectMapper
open class DeviceModelExtsResource: Mappable {
    /*
    Canonical URI of a device
    */
    open var `uri`: String?
    /*
    Devices data
    */
    open var `records`: [DeviceModelExtResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, records: [DeviceModelExtResource]? = nil) {
        self.init()
        self.uri = `uri`
        self.records = `records`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `records` <- map["records"]
    }
}
