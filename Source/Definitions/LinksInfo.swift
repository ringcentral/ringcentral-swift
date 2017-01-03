import Foundation
import ObjectMapper
open class LinksInfo: Definition {
    // Link to start a meeting
    open var `startUri`: String?
    // Link to join a meeting
    open var `joinUri`: String?
    convenience public init(startUri: String? = nil, joinUri: String? = nil) {
        self.init()
        self.startUri = `startUri`
        self.joinUri = `joinUri`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `startUri` <- map["startUri"]
        `joinUri` <- map["joinUri"]
    }
}
