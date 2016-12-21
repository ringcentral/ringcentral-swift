import Foundation
import ObjectMapper
import Alamofire
open class NumberParserPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "number-parser"
        }
    }
    open func `parse`() -> ParsePath {
        return ParsePath(parent: self)
    }
}
