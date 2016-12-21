import Foundation
import ObjectMapper
import Alamofire
open class PhoneLinesInfo: Mappable {
    // Type of phone line
    open var `lineType`: String?
    // Phone number information
    open var `phoneInfo`: PhoneLinesInfo_PhoneNumberInfo?
    public init() {
    }
    convenience public init(lineType: String? = nil, phoneInfo: PhoneLinesInfo_PhoneNumberInfo? = nil) {
        self.init()
        self.lineType = `lineType`
        self.phoneInfo = `phoneInfo`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `lineType` <- map["lineType"]
        `phoneInfo` <- map["phoneInfo"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
