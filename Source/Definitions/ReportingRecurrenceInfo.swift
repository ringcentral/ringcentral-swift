import Foundation
import ObjectMapper
open class ReportingRecurrenceInfo: Mappable {
    /*
    Pattern (frequency) of recurrence
    */
    open var `pattern`: String?
    /*
    Time and dates should be specified in UTC time zone
    */
    open var `value`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(pattern: String? = nil, value: String? = nil) {
        self.init()
        self.pattern = `pattern`
        self.value = `value`
    }
    open func mapping(map: Map) {
        `pattern` <- map["pattern"]
        `value` <- map["value"]
    }
}
