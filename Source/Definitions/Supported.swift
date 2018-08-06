import Foundation
import ObjectMapper
open class Supported: Mappable {
    /*
    */
    open var `supported`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(supported: Bool? = nil) {
        self.init()
        self.supported = `supported`
    }
    open func mapping(map: Map) {
        `supported` <- map["supported"]
    }
}
