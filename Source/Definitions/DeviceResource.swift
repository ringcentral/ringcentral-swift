import Foundation
import ObjectMapper
open class DeviceResource: Mappable {
    /*
    Internal identifier of a device
    */
    open var `id`: String?
    /*
    Canonical URI of a device
    */
    open var `uri`: String?
    /*
    Device identification number (stock keeping unit) in the format TP-ID [-AT-AC], where TP is device type (HP for RC HardPhone, DV for all other devices including softphone); ID - device model ID; AT -addon type ID; AC - addon count (if any). For example 'HP-56-2-2'
    */
    open var `sku`: String?
    /*
    Device type. The default value is 'HardPhone'
    */
    open var `type`: String?
    /*
    Status of a device = ['Online', 'Offline']
    */
    open var `status`: String?
    /*
    Device name. Mandatory if ordering SoftPhone or OtherPhone . Optional for HardPhone . If not specified for HardPhone, then device model name is used as device name
    */
    open var `name`: String?
    /*
    Serial number for HardPhone (is returned only when the phone is shipped and provisioned); endpoint_id for softphone and mobile applications
    */
    open var `serial`: String?
    /*
    PC name for softphone
    */
    open var `computerName`: String?
    /*
    HardPhone model information
    */
    open var `model`: DeviceModelResource?
    /*
    This attribute can be omitted for unassigned devices
    */
    open var `extension`: ExtensionResource?
    /*
    Phone lines information
    */
    open var `phoneLines`: PhoneLineResource?
    /*
    Address for emergency cases. The same emergency address is assigned to all numbers of a single device ,
    */
    open var `emergencyServiceAddress`: EmergencyServiceAddressResource?
    /*
    Shipping information, according to which devices (in case of HardPhone ) or e911 stickers (in case of SoftPhone and OtherPhone ) will be delivered to the customer
    */
    open var `shipping`: ShippingResource?
    /*
    Box billing identifier of a device. Applicable only for HardPhones. It is an alternative way to identify the device to be ordered. Either  model structure, or boxBillingId must be specified for HardPhone
    */
    open var `boxBillingId`: Int?
    /*
    Pooling type of a deviceHost - device with standalone paid phone line which can be linked to Glip/Softphone instanceGuest - device with a linked phone lineNone - device without a phone line or with specific line (free, BLA, etc.) = ['Host', 'Guest', 'None']
    */
    open var `linePooling`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, sku: String? = nil, type: String? = nil, status: String? = nil, name: String? = nil, serial: String? = nil, computerName: String? = nil, model: DeviceModelResource? = nil, extension: ExtensionResource? = nil, phoneLines: PhoneLineResource? = nil, emergencyServiceAddress: EmergencyServiceAddressResource? = nil, shipping: ShippingResource? = nil, boxBillingId: Int? = nil, linePooling: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.sku = `sku`
        self.type = `type`
        self.status = `status`
        self.name = `name`
        self.serial = `serial`
        self.computerName = `computerName`
        self.model = `model`
        self.extension = `extension`
        self.phoneLines = `phoneLines`
        self.emergencyServiceAddress = `emergencyServiceAddress`
        self.shipping = `shipping`
        self.boxBillingId = `boxBillingId`
        self.linePooling = `linePooling`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `sku` <- map["sku"]
        `type` <- map["type"]
        `status` <- map["status"]
        `name` <- map["name"]
        `serial` <- map["serial"]
        `computerName` <- map["computerName"]
        `model` <- map["model"]
        `extension` <- map["extension"]
        `phoneLines` <- map["phoneLines"]
        `emergencyServiceAddress` <- map["emergencyServiceAddress"]
        `shipping` <- map["shipping"]
        `boxBillingId` <- map["boxBillingId"]
        `linePooling` <- map["linePooling"]
    }
}
