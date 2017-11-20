import Foundation
import ObjectMapper
open class InternalMessageResource: Mappable {
    /*
    */
    open var `to`: [CallerInfo]?
    /*
    */
    open var `from`: CallerInfo?
    /*
    */
    open var `text`: String?
    /*
    */
    open var `replyOn`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(to: [CallerInfo]? = nil, from: CallerInfo? = nil, text: String? = nil, replyOn: Int? = nil) {
        self.init()
        self.to = `to`
        self.from = `from`
        self.text = `text`
        self.replyOn = `replyOn`
    }
    open func mapping(map: Map) {
        `to` <- map["to"]
        `from` <- map["from"]
        `text` <- map["text"]
        `replyOn` <- map["replyOn"]
    }
}
