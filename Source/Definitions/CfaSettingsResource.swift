import Foundation
import ObjectMapper
open class CfaSettingsResource: Mappable {
    /*
    */
    open var `views`: [CfaView]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(views: [CfaView]? = nil) {
        self.init()
        self.views = `views`
    }
    open func mapping(map: Map) {
        `views` <- map["views"]
    }
}
