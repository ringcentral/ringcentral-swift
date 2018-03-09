import Foundation
import ObjectMapper
open class HintResource: Mappable {
    /*
    */
    open var `expiresIn`: Int?
    /*
    */
    open var `actionRequired`: Bool?
    /*
    */
    open var `messageUri`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(expiresIn: Int? = nil, actionRequired: Bool? = nil, messageUri: String? = nil) {
        self.init()
        self.expiresIn = `expiresIn`
        self.actionRequired = `actionRequired`
        self.messageUri = `messageUri`
    }
    open func mapping(map: Map) {
        `expiresIn` <- map["expiresIn"]
        `actionRequired` <- map["actionRequired"]
        `messageUri` <- map["messageUri"]
    }
}
