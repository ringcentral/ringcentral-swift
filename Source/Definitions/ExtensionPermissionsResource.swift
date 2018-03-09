import Foundation
import ObjectMapper
open class ExtensionPermissionsResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `admin`: Permission?
    /*
    */
    open var `internationalCalling`: Permission?
    /*
    */
    open var `freeSoftPhoneDigitalLine`: Permission?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, admin: Permission? = nil, internationalCalling: Permission? = nil, freeSoftPhoneDigitalLine: Permission? = nil) {
        self.init()
        self.uri = `uri`
        self.admin = `admin`
        self.internationalCalling = `internationalCalling`
        self.freeSoftPhoneDigitalLine = `freeSoftPhoneDigitalLine`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `admin` <- map["admin"]
        `internationalCalling` <- map["internationalCalling"]
        `freeSoftPhoneDigitalLine` <- map["freeSoftPhoneDigitalLine"]
    }
}
