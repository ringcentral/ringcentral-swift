import Foundation
import ObjectMapper
open class CustomGreetingAnsweringRuleInfo: Mappable {
    /*
    Canonical URI of an answering rule
    */
    open var `uri`: String?
    /*
    Internal identifier of an answering rule
    */
    open var `id`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
    }
}
