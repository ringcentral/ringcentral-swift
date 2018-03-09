import Foundation
import ObjectMapper
open class SipDetailsToRegister: Mappable {
    /*
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
