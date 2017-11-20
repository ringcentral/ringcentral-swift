import Foundation
import ObjectMapper
open class PhoneNumbers: Mappable {
    /*
    Canonical URI of the phone numbers resource
    */
    open var `uri`: String?
    /*
    List of phone numbers filtered by the specified criteria
    */
    open var `records`: [LookupPhoneNumberInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, records: [LookupPhoneNumberInfo]? = nil) {
        self.init()
        self.uri = `uri`
        self.records = `records`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `records` <- map["records"]
    }
}
