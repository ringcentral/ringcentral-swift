import Foundation
import ObjectMapper
open class MessageChange: Definition {
    // Message type
    open var `type`: String?
    // The number of new messages. Can be omitted if the value is zero
    open var `newCount`: Int?
    // The number of updated messages. Can be omitted if the value is zero
    open var `updatedCount`: Int?
    convenience public init(type: String? = nil, newCount: Int? = nil, updatedCount: Int? = nil) {
        self.init()
        self.type = `type`
        self.newCount = `newCount`
        self.updatedCount = `updatedCount`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `type` <- map["type"]
        `newCount` <- map["newCount"]
        `updatedCount` <- map["updatedCount"]
    }
}
