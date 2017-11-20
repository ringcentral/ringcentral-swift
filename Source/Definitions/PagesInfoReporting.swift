import Foundation
import ObjectMapper
open class PagesInfoReporting: Mappable {
    /*
    Name of a page. CFA application UI predefines a set of possible names and treats them as enum constants to distinguish pages by type. This is not user-visible value, as it might need localization. The maximum value is 255
    */
    open var `name`: String?
    /*
    CFA-defined filter values/page parameters
    */
    open var `attrX`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(name: String? = nil, attrX: String? = nil) {
        self.init()
        self.name = `name`
        self.attrX = `attrX`
    }
    open func mapping(map: Map) {
        `name` <- map["name"]
        `attrX` <- map["attrX"]
    }
}
