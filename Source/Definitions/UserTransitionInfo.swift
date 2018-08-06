import Foundation
import ObjectMapper
open class UserTransitionInfo: Mappable {
    /*
    Specifies if an activation email is automatically sent to new users (Not Activated extensions) or not
    */
    open var `sendWelcomeEmailsToUsers`: Bool?
    /*
    Supported for account confirmation. Specifies whether welcome email is sent
    */
    open var `sendWelcomeEmail`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(sendWelcomeEmailsToUsers: Bool? = nil, sendWelcomeEmail: Bool? = nil) {
        self.init()
        self.sendWelcomeEmailsToUsers = `sendWelcomeEmailsToUsers`
        self.sendWelcomeEmail = `sendWelcomeEmail`
    }
    open func mapping(map: Map) {
        `sendWelcomeEmailsToUsers` <- map["sendWelcomeEmailsToUsers"]
        `sendWelcomeEmail` <- map["sendWelcomeEmail"]
    }
}
