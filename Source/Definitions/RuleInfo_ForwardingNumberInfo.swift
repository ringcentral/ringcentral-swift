import Foundation
import ObjectMapper
open class RuleInfo_ForwardingNumberInfo: Definition {
    // Link to a forwarding number resource
    open var `uri`: String?
    // Internal identifier of a forwarding number
    open var `id`: String?
    // Phone number to which the call is forwarded
    open var `phoneNumber`: String?
    // Title of a forwarding number
    open var `label`: String?
    convenience public init(uri: String? = nil, id: String? = nil, phoneNumber: String? = nil, label: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.phoneNumber = `phoneNumber`
        self.label = `label`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `phoneNumber` <- map["phoneNumber"]
        `label` <- map["label"]
    }
}
