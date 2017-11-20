import Foundation
import ObjectMapper
open class ContactsInput: Mappable {
    /*
    */
    open var `records`: [PersonalContactResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(records: [PersonalContactResource]? = nil) {
        self.init()
        self.records = `records`
    }
    open func mapping(map: Map) {
        `records` <- map["records"]
    }
}
