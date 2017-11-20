import Foundation
import ObjectMapper
open class ReservePhoneNumbersRecordsResource: Mappable {
    /*
    */
    open var `records`: [ReservePhoneNumberResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(records: [ReservePhoneNumberResource]? = nil) {
        self.init()
        self.records = `records`
    }
    open func mapping(map: Map) {
        `records` <- map["records"]
    }
}
