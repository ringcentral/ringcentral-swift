import Foundation
import ObjectMapper
open class SaveRequestResource: Mappable {
    /*
    */
    open var `rendererId`: String?
    /*
    */
    open var `messageId`: String?
    /*
    */
    open var `status`: String?
    /*
    */
    open var `resultFile`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(rendererId: String? = nil, messageId: String? = nil, status: String? = nil, resultFile: String? = nil) {
        self.init()
        self.rendererId = `rendererId`
        self.messageId = `messageId`
        self.status = `status`
        self.resultFile = `resultFile`
    }
    open func mapping(map: Map) {
        `rendererId` <- map["rendererId"]
        `messageId` <- map["messageId"]
        `status` <- map["status"]
        `resultFile` <- map["resultFile"]
    }
}
