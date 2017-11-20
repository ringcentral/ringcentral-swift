import Foundation
import ObjectMapper
open class AttachmentInfoReporting: Mappable {
    /*
    Specifies whether to include CSV version of the report
    */
    open var `csv`: Bool?
    /*
    Specifies whether to include PDF version of the report
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
