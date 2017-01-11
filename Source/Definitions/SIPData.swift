import Foundation
import ObjectMapper
open class SIPData: Mappable {
    // Recipient data
    open var `toTag`: String?
    // Sender data
    open var `fromTag`: String?
    // Remote address URL
    open var `remoteUri`: String?
    // Local address URL
    open var `localUri`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(toTag: String? = nil, fromTag: String? = nil, remoteUri: String? = nil, localUri: String? = nil) {
        self.init()
        self.toTag = `toTag`
        self.fromTag = `fromTag`
        self.remoteUri = `remoteUri`
        self.localUri = `localUri`
    }
    open func mapping(map: Map) {
        `toTag` <- map["toTag"]
        `fromTag` <- map["fromTag"]
        `remoteUri` <- map["remoteUri"]
        `localUri` <- map["localUri"]
    }
}
