import Foundation
import ObjectMapper
open class MeetingServiceInfoResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `supportUri`: String?
    /*
    */
    open var `intlDialInNumbersUri`: String?
    /*
    */
    open var `externalUserInfo`: MeetingExternalUserInfoResource?
    /*
    */
    open var `dialInNumbers`: [DialInNumberResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, supportUri: String? = nil, intlDialInNumbersUri: String? = nil, externalUserInfo: MeetingExternalUserInfoResource? = nil, dialInNumbers: [DialInNumberResource]? = nil) {
        self.init()
        self.uri = `uri`
        self.supportUri = `supportUri`
        self.intlDialInNumbersUri = `intlDialInNumbersUri`
        self.externalUserInfo = `externalUserInfo`
        self.dialInNumbers = `dialInNumbers`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `supportUri` <- map["supportUri"]
        `intlDialInNumbersUri` <- map["intlDialInNumbersUri"]
        `externalUserInfo` <- map["externalUserInfo"]
        `dialInNumbers` <- map["dialInNumbers"]
    }
}
