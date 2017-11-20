import Foundation
import ObjectMapper
open class CallLogRecordDeviceInfo: Mappable {
    /*
    Internal identifier of a device
    */
    open var `id`: String?
    /*
    string to a device
    */
    open var `uri`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
    }
}
