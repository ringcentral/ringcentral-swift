import Foundation
import ObjectMapper
open class DictionaryGreetingList: Mappable {
    /*
    Canonical URI of greetings list resource
    */
    open var `uri`: String?
    /*
    List of greetings
    */
    open var `records`: [DictionaryGreetingInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, records: [DictionaryGreetingInfo]? = nil) {
        self.init()
        self.uri = `uri`
        self.records = `records`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `records` <- map["records"]
    }
}
