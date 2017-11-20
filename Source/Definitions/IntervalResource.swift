import Foundation
import ObjectMapper
open class IntervalResource: Mappable {
    /*
    */
    open var `from`: String?
    /*
    */
    open var `to`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(from: String? = nil, to: String? = nil) {
        self.init()
        self.from = `from`
        self.to = `to`
    }
    open func mapping(map: Map) {
        `from` <- map["from"]
        `to` <- map["to"]
    }
}
