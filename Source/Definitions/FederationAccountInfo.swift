import Foundation
import ObjectMapper
open class FederationAccountInfo: Mappable {
    /*
    Internal identifier of an account
    */
    open var `id`: String?
    /*
    Company name of an account
    */
    open var `companyName`: String?
    /*
    Federation name of an account
    */
    open var `federatedName`: String?
    /*
    Datetime when this account was linked to a federation, in ISO 8601 format, for example 2016-03-10T18:07:52.534Z
    */
    open var `linkCreationTime`: String?
    /*
    Main company number information
    */
    open var `mainNumber`: FederationMainNumberInfo?
    /*
    Count of federation extension numbers conflicting with extension numbers of the requested account. For extension numbers of the requested account the value of this parameter is '0'
    */
    open var `conflictCount`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, companyName: String? = nil, federatedName: String? = nil, linkCreationTime: String? = nil, mainNumber: FederationMainNumberInfo? = nil, conflictCount: Int? = nil) {
        self.init()
        self.id = `id`
        self.companyName = `companyName`
        self.federatedName = `federatedName`
        self.linkCreationTime = `linkCreationTime`
        self.mainNumber = `mainNumber`
        self.conflictCount = `conflictCount`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `companyName` <- map["companyName"]
        `federatedName` <- map["federatedName"]
        `linkCreationTime` <- map["linkCreationTime"]
        `mainNumber` <- map["mainNumber"]
        `conflictCount` <- map["conflictCount"]
    }
}
