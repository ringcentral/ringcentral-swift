import Foundation
import ObjectMapper
open class RuleInfo: Definition {
    // Forwarding number (or group) ordinal
    open var `index`: Int?
    // Number of rings for a forwarding number (or group)
    open var `ringCount`: Int?
    // Forwarding number (or group) data
    open var `forwardingNumbers`: [RuleInfo_ForwardingNumberInfo]?
    convenience public init(index: Int? = nil, ringCount: Int? = nil, forwardingNumbers: [RuleInfo_ForwardingNumberInfo]? = nil) {
        self.init()
        self.index = `index`
        self.ringCount = `ringCount`
        self.forwardingNumbers = `forwardingNumbers`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `index` <- map["index"]
        `ringCount` <- map["ringCount"]
        `forwardingNumbers` <- map["forwardingNumbers"]
    }
}
