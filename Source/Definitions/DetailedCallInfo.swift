import Foundation
import ObjectMapper
open class DetailedCallInfo: Mappable {
    /*
    */
    open var `callId`: String?
    /*
    */
    open var `toTag`: String?
    /*
    */
    open var `fromTag`: String?
    /*
    */
    open var `remoteUri`: String?
    /*
    */
    open var `localUri`: String?
    /*
    */
    open var `rcSessionId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(callId: String? = nil, toTag: String? = nil, fromTag: String? = nil, remoteUri: String? = nil, localUri: String? = nil, rcSessionId: String? = nil) {
        self.init()
        self.callId = `callId`
        self.toTag = `toTag`
        self.fromTag = `fromTag`
        self.remoteUri = `remoteUri`
        self.localUri = `localUri`
        self.rcSessionId = `rcSessionId`
    }
    open func mapping(map: Map) {
        `callId` <- map["callId"]
        `toTag` <- map["toTag"]
        `fromTag` <- map["fromTag"]
        `remoteUri` <- map["remoteUri"]
        `localUri` <- map["localUri"]
        `rcSessionId` <- map["rcSessionId"]
    }
}
