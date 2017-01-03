import Foundation
import ObjectMapper
open class SIPData: Definition {
    // Recipient data
    open var `toTag`: String?
    // Sender data
    open var `fromTag`: String?
    // Remote address URL
    open var `remoteUri`: String?
    // Local address URL
    open var `localUri`: String?
    convenience public init(toTag: String? = nil, fromTag: String? = nil, remoteUri: String? = nil, localUri: String? = nil) {
        self.init()
        self.toTag = `toTag`
        self.fromTag = `fromTag`
        self.remoteUri = `remoteUri`
        self.localUri = `localUri`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `toTag` <- map["toTag"]
        `fromTag` <- map["fromTag"]
        `remoteUri` <- map["remoteUri"]
        `localUri` <- map["localUri"]
    }
}
