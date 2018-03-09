import Foundation
import ObjectMapper
open class DeviceToRegister: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `computerName`: String?
    /*
    */
    open var `appExternalId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, computerName: String? = nil, appExternalId: String? = nil) {
        self.init()
        self.id = `id`
        self.computerName = `computerName`
        self.appExternalId = `appExternalId`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `computerName` <- map["computerName"]
        `appExternalId` <- map["appExternalId"]
    }
}
