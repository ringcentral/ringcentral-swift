import Foundation
import ObjectMapper
open class TimeInterval: Definition {
    // Time in format hh:mm
    open var `from`: String?
    // Time in format hh:mm
    open var `to`: String?
    convenience public init(from: String? = nil, to: String? = nil) {
        self.init()
        self.from = `from`
        self.to = `to`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `from` <- map["from"]
        `to` <- map["to"]
    }
}
