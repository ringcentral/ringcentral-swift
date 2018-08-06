import Foundation
import ObjectMapper
open class MessageChanges: Mappable {
    /*
    Message type
    */
    open var `type`: String?
    /*
    The number of new messages. Can be omitted if the value is zero
    */
    open var `newCount`: Int?
    /*
    The number of updated messages. Can be omitted if the value is zero
    */
    open var `updatedCount`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, newCount: Int? = nil, updatedCount: Int? = nil) {
        self.init()
        self.type = `type`
        self.newCount = `newCount`
        self.updatedCount = `updatedCount`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `newCount` <- map["newCount"]
        `updatedCount` <- map["updatedCount"]
    }
}
