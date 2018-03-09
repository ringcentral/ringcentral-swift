import Foundation
import ObjectMapper
open class SmsResource: Mappable {
    /*
    */
    open var `country`: CountryResource?
    /*
    */
    open var `to`: [CallerInfo]?
    /*
    */
    open var `from`: CallerInfo?
    /*
    */
    open var `text`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(country: CountryResource? = nil, to: [CallerInfo]? = nil, from: CallerInfo? = nil, text: String? = nil) {
        self.init()
        self.country = `country`
        self.to = `to`
        self.from = `from`
        self.text = `text`
    }
    open func mapping(map: Map) {
        `country` <- map["country"]
        `to` <- map["to"]
        `from` <- map["from"]
        `text` <- map["text"]
    }
}
