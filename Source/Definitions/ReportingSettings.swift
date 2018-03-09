import Foundation
import ObjectMapper
open class ReportingSettings: Mappable {
    /*
    List of 'View' structures with a tuple of filter values, pages and schedules
    */
    open var `views`: [ReportingViewInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(views: [ReportingViewInfo]? = nil) {
        self.init()
        self.views = `views`
    }
    open func mapping(map: Map) {
        `views` <- map["views"]
    }
}
