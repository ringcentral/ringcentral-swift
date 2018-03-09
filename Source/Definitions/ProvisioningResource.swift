import Foundation
import ObjectMapper
open class ProvisioningResource: Mappable {
    /*
    */
    open var `webUris`: WebUrisResource?
    /*
    */
    open var `hints`: HintsResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(webUris: WebUrisResource? = nil, hints: HintsResource? = nil) {
        self.init()
        self.webUris = `webUris`
        self.hints = `hints`
    }
    open func mapping(map: Map) {
        `webUris` <- map["webUris"]
        `hints` <- map["hints"]
    }
}
