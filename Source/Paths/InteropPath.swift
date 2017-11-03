import Foundation
import ObjectMapper
import Alamofire
open class InteropPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "interop"
        }
    }
    open func `generateCode`() -> GenerateCodePath {
        return GenerateCodePath(parent: self)
    }
}
