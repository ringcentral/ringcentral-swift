import Foundation
import ObjectMapper
open class RangesInfo: Mappable {
    // Date and time in format YYYY-MM-DD hh:mm
    open var `from`: String?
    // Date and time in format YYYY-MM-DD hh:mm
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
