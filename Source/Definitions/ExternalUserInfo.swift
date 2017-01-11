import Foundation
import ObjectMapper
open class ExternalUserInfo: Mappable {
    // User type of a meeting account
    open var `accountId`: String?
    // Meeting account user identifier
    open var `userId`: String?
    // Meeting account user token
    open var `userToken`: String?
    // Meeting account user type
    open var `userType`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(accountId: String? = nil, userId: String? = nil, userToken: String? = nil, userType: Int? = nil) {
        self.init()
        self.accountId = `accountId`
        self.userId = `userId`
        self.userToken = `userToken`
        self.userType = `userType`
    }
    open func mapping(map: Map) {
        `accountId` <- map["accountId"]
        `userId` <- map["userId"]
        `userToken` <- map["userToken"]
        `userType` <- map["userType"]
    }
}
