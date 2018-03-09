import Foundation
import ObjectMapper
open class ExtensionStatusInfo: Mappable {
    /*
    A free-form user comment, describing the status change reason
    */
    open var `comment`: String?
    /*
    Type of suspension
    */
    open var `reason`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(comment: String? = nil, reason: String? = nil) {
        self.init()
        self.comment = `comment`
        self.reason = `reason`
    }
    open func mapping(map: Map) {
        `comment` <- map["comment"]
        `reason` <- map["reason"]
    }
}
