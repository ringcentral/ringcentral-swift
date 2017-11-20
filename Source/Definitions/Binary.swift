import Foundation
import ObjectMapper
open class Binary: Mappable {
    /*
    Required Binary Data
    */
    open var `data`: Data?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(data: Data? = nil) {
        self.init()
        self.data = `data`
    }
    open func mapping(map: Map) {
        `data` <- map["data"]
    }
}
