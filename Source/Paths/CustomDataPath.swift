import Foundation
import ObjectMapper
import Alamofire
open class CustomDataPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "custom-data"
        }
    }
    open func `content`(_ _id: String? = nil) -> ContentPath {
        return ContentPath(parent: self, _id: _id)
    }
}
