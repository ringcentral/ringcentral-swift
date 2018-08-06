import Foundation
import ObjectMapper
open class PhoneLinesInfo: Mappable {
    /*
    Type of phone line
    */
    open var `lineType`: String?
    /*
    Phone number information
    */
    open var `phoneInfo`: PhoneNumberInfoIntId?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(lineType: String? = nil, phoneInfo: PhoneNumberInfoIntId? = nil) {
        self.init()
        self.lineType = `lineType`
        self.phoneInfo = `phoneInfo`
    }
    open func mapping(map: Map) {
        `lineType` <- map["lineType"]
        `phoneInfo` <- map["phoneInfo"]
    }
}
