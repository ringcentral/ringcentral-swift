import Foundation
import ObjectMapper
open class StatusInfo: Definition {
    // A free-form user comment, describing the status change reason
    open var `comment`: String?
    // Type of suspension
    open var `reason`: String?
    convenience public init(comment: String? = nil, reason: String? = nil) {
        self.init()
        self.comment = `comment`
        self.reason = `reason`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `comment` <- map["comment"]
        `reason` <- map["reason"]
    }
}
