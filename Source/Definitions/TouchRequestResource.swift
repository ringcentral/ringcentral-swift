import Foundation
import ObjectMapper
open class TouchRequestResource: Mappable {
    /*
    */
    open var `rendererId`: String?
    /*
    */
    open var `messageId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(rendererId: String? = nil, messageId: String? = nil) {
        self.init()
        self.rendererId = `rendererId`
        self.messageId = `messageId`
    }
    open func mapping(map: Map) {
        `rendererId` <- map["rendererId"]
        `messageId` <- map["messageId"]
    }
}
