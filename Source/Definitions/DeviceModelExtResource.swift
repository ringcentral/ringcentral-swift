import Foundation
import ObjectMapper
open class DeviceModelExtResource: Mappable {
    /*
    Device identification number (stock keeping unit) in the format TP-ID [-AT-AC], where TP is device type (HP for RC HardPhone, DV for all other devices including softphone); ID - device model ID; AT -addon type ID; AC - addon count (if any). For example 'HP-56-2-2'
    */
    open var `sku`: String?
    /*
    Device type. The default value is 'HardPhone'
    */
    open var `type`: String?
    /*
    HardPhone model information
    */
    open var `model`: DeviceModelResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(sku: String? = nil, type: String? = nil, model: DeviceModelResource? = nil) {
        self.init()
        self.sku = `sku`
        self.type = `type`
        self.model = `model`
    }
    open func mapping(map: Map) {
        `sku` <- map["sku"]
        `type` <- map["type"]
        `model` <- map["model"]
    }
}
