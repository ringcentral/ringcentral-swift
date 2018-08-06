import Foundation
import ObjectMapper
open class GlipWebhookList: Mappable {
    /*
    */
    open var `records`: [GlipWebhookInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(records: [GlipWebhookInfo]? = nil) {
        self.init()
        self.records = `records`
    }
    open func mapping(map: Map) {
        `records` <- map["records"]
    }
}
