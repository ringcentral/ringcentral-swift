import Foundation
import ObjectMapper
open class CallerInfoFrom: Mappable {
    /*
    */
    open var `phoneNumber`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `location`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, name: String? = nil, location: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.name = `name`
        self.location = `location`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `name` <- map["name"]
        `location` <- map["location"]
    }
}
