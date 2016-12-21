import Foundation
import ObjectMapper
import Alamofire
open class Subscription_Request_DeliveryMode: Mappable {
    // Notifications transportation provider name. 'APNS' (Apple Push Notifications Service)
    open var `transportType`: String?
    // Optional parameter. Specifies if the message will be encrypted or not. If request contains any presence event filter the value by default is 'True' (even if specified as 'false'). If request contains only message event filters the value by default is 'False'
    open var `encryption`: Bool?
    public init() {
    }
    convenience public init(transportType: String? = nil, encryption: Bool? = nil) {
        self.init()
        self.transportType = `transportType`
        self.encryption = `encryption`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `transportType` <- map["transportType"]
        `encryption` <- map["encryption"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
