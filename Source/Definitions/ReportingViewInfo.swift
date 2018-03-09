import Foundation
import ObjectMapper
open class ReportingViewInfo: Mappable {
    /*
    User-defined name of a 'View'. The maximum value is 255
    */
    open var `name`: String?
    /*
    List of pages, the max amount is 10
    */
    open var `pages`: [ReportingPagesInfo]?
    /*
    List of schedules, the max amount is 5. Each 'View' may have several schedules for reporting. For example, customer may want to get daily and weekly reports with the same set of settings
    */
    open var `schedules`: [ReportingSchedulesInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(name: String? = nil, pages: [ReportingPagesInfo]? = nil, schedules: [ReportingSchedulesInfo]? = nil) {
        self.init()
        self.name = `name`
        self.pages = `pages`
        self.schedules = `schedules`
    }
    open func mapping(map: Map) {
        `name` <- map["name"]
        `pages` <- map["pages"]
        `schedules` <- map["schedules"]
    }
}
