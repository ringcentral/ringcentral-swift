import Foundation
import ObjectMapper
open class UpdateMessageRequest: Mappable {
    /*
    Read status of a message to be changed. Multiple values are accepted
    */
    open var `readStatus`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(readStatus: String? = nil) {
        self.init()
        self.readStatus = `readStatus`
    }
    open func mapping(map: Map) {
        `readStatus` <- map["readStatus"]
    }
}
