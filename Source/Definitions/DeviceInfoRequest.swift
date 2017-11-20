import Foundation
import ObjectMapper
open class DeviceInfoRequest: Mappable {
    /*
    Device unique identifier, retrieved on previous session (if any)
    */
    open var `id`: String?
    /*
    For iOS devices only Certificate name (used by iOS applications for APNS subscription)
    */
    open var `appExternalId`: String?
    /*
    For SoftPhone only Computer name
    */
    open var `computerName`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, appExternalId: String? = nil, computerName: String? = nil) {
        self.init()
        self.id = `id`
        self.appExternalId = `appExternalId`
        self.computerName = `computerName`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `appExternalId` <- map["appExternalId"]
        `computerName` <- map["computerName"]
    }
}
