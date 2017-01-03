import Foundation
import ObjectMapper
open class ExtensionInfo_Request_Provision_ContactInfo: Definition {
    // Mandatory. Extension user first name
    open var `firstName`: String?
    // Mandatory. Extension user last name
    open var `lastName`: String?
    // Mandatory. Extension user contact email
    open var `email`: String?
    convenience public init(firstName: String? = nil, lastName: String? = nil, email: String? = nil) {
        self.init()
        self.firstName = `firstName`
        self.lastName = `lastName`
        self.email = `email`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `email` <- map["email"]
    }
}
