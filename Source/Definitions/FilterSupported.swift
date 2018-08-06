import Foundation
import ObjectMapper
open class FilterSupported: Mappable {
    /*
    */
    open var `maxResults`: Int?
    /*
    */
    open var `supported`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(maxResults: Int? = nil, supported: Bool? = nil) {
        self.init()
        self.maxResults = `maxResults`
        self.supported = `supported`
    }
    open func mapping(map: Map) {
        `maxResults` <- map["maxResults"]
        `supported` <- map["supported"]
    }
}
