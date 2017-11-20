import Foundation
import ObjectMapper
open class PromotionCodeResource: Mappable {
    /*
    */
    open var `accountId`: String?
    /*
    */
    open var `promotionCode`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(accountId: String? = nil, promotionCode: String? = nil) {
        self.init()
        self.accountId = `accountId`
        self.promotionCode = `promotionCode`
    }
    open func mapping(map: Map) {
        `accountId` <- map["accountId"]
        `promotionCode` <- map["promotionCode"]
    }
}
