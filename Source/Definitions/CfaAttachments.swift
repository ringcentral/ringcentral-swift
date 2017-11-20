import Foundation
import ObjectMapper
open class CfaAttachments: Mappable {
    /*
    */
    open var `csv`: Bool?
    /*
    */
    open var `pdf`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(csv: Bool? = nil, pdf: Bool? = nil) {
        self.init()
        self.csv = `csv`
        self.pdf = `pdf`
    }
    open func mapping(map: Map) {
        `csv` <- map["csv"]
        `pdf` <- map["pdf"]
    }
}
