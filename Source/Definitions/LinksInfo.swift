import Foundation
import ObjectMapper
open class LinksInfo: Mappable {
    // Link to start a meeting
    open var `startUri`: String?
    // Link to join a meeting
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
