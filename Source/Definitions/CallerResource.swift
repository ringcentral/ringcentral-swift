import Foundation
import ObjectMapper
open class CallerResource: Mappable {
    /*
    */
    open var `callerId`: String?
    /*
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(callerId: String? = nil, name: String? = nil) {
        self.init()
        self.callerId = `callerId`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `callerId` <- map["callerId"]
        `name` <- map["name"]
    }
}
