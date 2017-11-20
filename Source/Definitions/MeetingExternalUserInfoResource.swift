import Foundation
import ObjectMapper
open class MeetingExternalUserInfoResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `userId`: String?
    /*
    */
    open var `accountId`: String?
    /*
    */
    open var `userType`: Int?
    /*
    */
    open var `userToken`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, userId: String? = nil, accountId: String? = nil, userType: Int? = nil, userToken: String? = nil) {
        self.init()
        self.uri = `uri`
        self.userId = `userId`
        self.accountId = `accountId`
        self.userType = `userType`
        self.userToken = `userToken`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `userId` <- map["userId"]
        `accountId` <- map["accountId"]
        `userType` <- map["userType"]
        `userToken` <- map["userToken"]
    }
}
