import Foundation
import ObjectMapper
open class APNSInfo: Mappable {
    /*
    Notification priority data
    */
    open var `aps`: APSInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(aps: APSInfo? = nil) {
        self.init()
        self.aps = `aps`
    }
    open func mapping(map: Map) {
        `aps` <- map["aps"]
    }
}
