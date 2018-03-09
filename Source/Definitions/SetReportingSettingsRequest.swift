import Foundation
import ObjectMapper
open class SetReportingSettingsRequest: Mappable {
    /*
    List of 'View' structures with a tuple of filter values, pages and schedules
    */
    open var `views`: [ViewInfoReporting]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(views: [ViewInfoReporting]? = nil) {
        self.init()
        self.views = `views`
    }
    open func mapping(map: Map) {
        `views` <- map["views"]
    }
}
