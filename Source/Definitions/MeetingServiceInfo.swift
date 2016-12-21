import Foundation
import ObjectMapper
import Alamofire
open class MeetingServiceInfo: Mappable {
    // Canonical URI of a meeting service info resource
    open var `uri`: String?
    // URI to retrieve support information for meetings functionality
    open var `supportUri`: String?
    // URI to retrieve international dial in numbers
    open var `intlDialInNumbersUri`: String?
    // External user data
    open var `externalUserInfo`: ExternalUserInfo?
    // Dial-in numbers data
    open var `dialInNumbers`: DialInNumbers?
    public init() {
    }
    convenience public init(uri: String? = nil, supportUri: String? = nil, intlDialInNumbersUri: String? = nil, externalUserInfo: ExternalUserInfo? = nil, dialInNumbers: DialInNumbers? = nil) {
        self.init()
        self.uri = `uri`
        self.supportUri = `supportUri`
        self.intlDialInNumbersUri = `intlDialInNumbersUri`
        self.externalUserInfo = `externalUserInfo`
        self.dialInNumbers = `dialInNumbers`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `supportUri` <- map["supportUri"]
        `intlDialInNumbersUri` <- map["intlDialInNumbersUri"]
        `externalUserInfo` <- map["externalUserInfo"]
        `dialInNumbers` <- map["dialInNumbers"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
