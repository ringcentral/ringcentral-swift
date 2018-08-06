import Foundation
import ObjectMapper
open class CreateVoicemail: Mappable {
    /*
    Recipient information
    */
    open var `to`: [CreateVoicemailToInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(to: [CreateVoicemailToInfo]? = nil) {
        self.init()
        self.to = `to`
    }
    open func mapping(map: Map) {
        `to` <- map["to"]
    }
}
