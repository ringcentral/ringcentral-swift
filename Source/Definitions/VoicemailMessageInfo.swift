import Foundation
import ObjectMapper
open class VoicemailMessageInfo: Mappable {
    /*
    Internal identifier of a voicemail message
    */
    open var `id`: String?
    /*
    Type of a message - 'Voicemail'
    */
    open var `type`: String?
    /*
    Link to a voicemail message resource
    */
    open var `uri`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, type: String? = nil, uri: String? = nil) {
        self.init()
        self.id = `id`
        self.type = `type`
        self.uri = `uri`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
        `uri` <- map["uri"]
    }
}
