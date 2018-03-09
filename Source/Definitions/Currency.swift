import Foundation
import ObjectMapper
open class Currency: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `code`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `symbol`: String?
    /*
    */
    open var `minorSymbol`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, code: String? = nil, name: String? = nil, symbol: String? = nil, minorSymbol: String? = nil) {
        self.init()
        self.id = `id`
        self.code = `code`
        self.name = `name`
        self.symbol = `symbol`
        self.minorSymbol = `minorSymbol`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `code` <- map["code"]
        `name` <- map["name"]
        `symbol` <- map["symbol"]
        `minorSymbol` <- map["minorSymbol"]
    }
}
