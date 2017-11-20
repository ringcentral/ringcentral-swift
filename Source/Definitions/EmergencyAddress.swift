import Foundation
import ObjectMapper
open class EmergencyAddress: Mappable {
    /*
    'True' if specifying of emergency address is required
    */
    open var `required`: Bool?
    /*
    'True' if only local emergency address can be specified
    */
    open var `localOnly`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(required: Bool? = nil, localOnly: Bool? = nil) {
        self.init()
        self.required = `required`
        self.localOnly = `localOnly`
    }
    open func mapping(map: Map) {
        `required` <- map["required"]
        `localOnly` <- map["localOnly"]
    }
}
