import Foundation
import ObjectMapper
open class CallRecordingExtensionResource: Mappable {
    /*
    Internal identifier of an extension
    */
    open var `id`: String?
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `extensionNumber`: String?
    /*
    */
    open var `type`: String?
    /*
    Direction of call
    */
    open var `callDirection`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, extensionNumber: String? = nil, type: String? = nil, callDirection: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.extensionNumber = `extensionNumber`
        self.type = `type`
        self.callDirection = `callDirection`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
        `type` <- map["type"]
        `callDirection` <- map["callDirection"]
    }
}
