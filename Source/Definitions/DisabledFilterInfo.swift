import Foundation
import ObjectMapper
open class DisabledFilterInfo: Mappable {
    /*
    Event filter that is disabled for the user
    */
    open var `filter`: String?
    /*
    Reason why the filter is disabled for the user
    */
    open var `reason`: String?
    /*
    Error message
    */
    open var `message`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(filter: String? = nil, reason: String? = nil, message: String? = nil) {
        self.init()
        self.filter = `filter`
        self.reason = `reason`
        self.message = `message`
    }
    open func mapping(map: Map) {
        `filter` <- map["filter"]
        `reason` <- map["reason"]
        `message` <- map["message"]
    }
}
