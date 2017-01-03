import Foundation
import ObjectMapper
open class AnsweringRuleInfo_CallerInfo: Definition {
    // Phone number of a caller
    open var `callerId`: String?
    // Contact name of a caller
    open var `name`: String?
    convenience public init(callerId: String? = nil, name: String? = nil) {
        self.init()
        self.callerId = `callerId`
        self.name = `name`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `callerId` <- map["callerId"]
        `name` <- map["name"]
    }
}
