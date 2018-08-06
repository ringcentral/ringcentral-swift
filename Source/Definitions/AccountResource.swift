import Foundation
import ObjectMapper
open class AccountResource: Mappable {
    /*
    */
    open var `companyName`: String?
    /*
    */
    open var `federatedName`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `mainNumber`: PhoneNumberResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(companyName: String? = nil, federatedName: String? = nil, id: String? = nil, mainNumber: PhoneNumberResource? = nil) {
        self.init()
        self.companyName = `companyName`
        self.federatedName = `federatedName`
        self.id = `id`
        self.mainNumber = `mainNumber`
    }
    open func mapping(map: Map) {
        `companyName` <- map["companyName"]
        `federatedName` <- map["federatedName"]
        `id` <- (map["id"], StringTransform())
        `mainNumber` <- map["mainNumber"]
    }
}
