import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_Provision_ContactInfo: Mappable {
    // Mandatory. Extension user first name
    open var `firstName`: String?
    // Mandatory. Extension user last name
    open var `lastName`: String?
    // Mandatory. Extension user contact email
    open var `email`: String?
    public init() {
    }
    convenience public init(firstName: String? = nil, lastName: String? = nil, email: String? = nil) {
        self.init()
        self.firstName = `firstName`
        self.lastName = `lastName`
        self.email = `email`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `email` <- map["email"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
