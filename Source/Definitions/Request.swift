import Foundation
import ObjectMapper
open class Request: Mappable {
    /*
    */
    open var `method`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(method: String? = nil) {
        self.init()
        self.method = `method`
    }
    open func mapping(map: Map) {
        `method` <- map["method"]
    }
}
