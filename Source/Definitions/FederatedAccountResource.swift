import Foundation
import ObjectMapper
open class FederatedAccountResource: Mappable {
    /*
    */
    open var `companyName`: String?
    /*
    */
    open var `conflictCount`: Int?
    /*
    */
    open var `federatedName`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `linkCreationTime`: String?
    /*
    */
    open var `mainNumber`: PhoneNumberResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(companyName: String? = nil, conflictCount: Int? = nil, federatedName: String? = nil, id: String? = nil, linkCreationTime: String? = nil, mainNumber: PhoneNumberResource? = nil) {
        self.init()
        self.companyName = `companyName`
        self.conflictCount = `conflictCount`
        self.federatedName = `federatedName`
        self.id = `id`
        self.linkCreationTime = `linkCreationTime`
        self.mainNumber = `mainNumber`
    }
    open func mapping(map: Map) {
        `companyName` <- map["companyName"]
        `conflictCount` <- map["conflictCount"]
        `federatedName` <- map["federatedName"]
        `id` <- (map["id"], StringTransform())
        `linkCreationTime` <- map["linkCreationTime"]
        `mainNumber` <- map["mainNumber"]
    }
}
