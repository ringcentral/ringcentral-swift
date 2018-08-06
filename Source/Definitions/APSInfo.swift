import Foundation
import ObjectMapper
open class APSInfo: Mappable {
    /*
    If the value is '1' then notification is turned on even if the application is in background
    */
    open var `contentAvailable`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(contentAvailable: Int? = nil) {
        self.init()
        self.contentAvailable = `contentAvailable`
    }
    open func mapping(map: Map) {
        `contentAvailable` <- map["contentAvailable"]
    }
}
