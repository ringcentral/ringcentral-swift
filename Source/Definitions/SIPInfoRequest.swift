import Foundation
import ObjectMapper
open class SIPInfoRequest: Mappable {
    /*
    Supported transport. SIP info will be returned for this transport if supported
    */
    open var `transport`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(transport: String? = nil) {
        self.init()
        self.transport = `transport`
    }
    open func mapping(map: Map) {
        `transport` <- map["transport"]
    }
}
