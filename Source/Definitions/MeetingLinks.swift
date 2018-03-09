import Foundation
import ObjectMapper
open class MeetingLinks: Mappable {
    /*
    */
    open var `startUri`: String?
    /*
    */
    open var `joinUri`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(startUri: String? = nil, joinUri: String? = nil) {
        self.init()
        self.startUri = `startUri`
        self.joinUri = `joinUri`
    }
    open func mapping(map: Map) {
        `startUri` <- map["startUri"]
        `joinUri` <- map["joinUri"]
    }
}
