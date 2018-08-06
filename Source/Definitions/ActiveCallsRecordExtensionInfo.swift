import Foundation
import ObjectMapper
open class ActiveCallsRecordExtensionInfo: Mappable {
    /*
    Link to an extension on whose behalf a call is initiated
    */
    open var `uri`: String?
    /*
    Internal identifier of an extension on whose behalf a call is initiated
    */
    open var `id`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
    }
}
