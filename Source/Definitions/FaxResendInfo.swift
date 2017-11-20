import Foundation
import ObjectMapper
open class FaxResendInfo: Mappable {
    /*
    */
    open var `originalMessageId`: Int?
    /*
    */
    open var `sendTime`: String?
    /*
    */
    open var `to`: [CallerInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(originalMessageId: Int? = nil, sendTime: String? = nil, to: [CallerInfo]? = nil) {
        self.init()
        self.originalMessageId = `originalMessageId`
        self.sendTime = `sendTime`
        self.to = `to`
    }
    open func mapping(map: Map) {
        `originalMessageId` <- map["originalMessageId"]
        `sendTime` <- map["sendTime"]
        `to` <- map["to"]
    }
}
