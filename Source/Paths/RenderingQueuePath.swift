import Foundation
import ObjectMapper
import Alamofire
open class RenderingQueuePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "rendering-queue"
        }
    }
    open func `poll`() -> PollPath {
        return PollPath(parent: self)
    }
    open func `save`() -> SavePath {
        return SavePath(parent: self)
    }
    open func `touch`() -> TouchPath {
        return TouchPath(parent: self)
    }
}
