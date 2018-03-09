import Foundation
import ObjectMapper
open class ModifySubscriptionRequest: Mappable {
    /*
    Collection of URIs to API resources (see Event Types). Mandatory field
    */
    open var `eventFilters`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(eventFilters: [String]? = nil) {
        self.init()
        self.eventFilters = `eventFilters`
    }
    open func mapping(map: Map) {
        `eventFilters` <- map["eventFilters"]
    }
}
