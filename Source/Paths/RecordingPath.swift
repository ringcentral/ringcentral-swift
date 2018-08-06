import Foundation
import ObjectMapper
import Alamofire
open class RecordingPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "recording"
        }
    }
    open func `content`(_ _id: String? = nil) -> ContentPath {
        return ContentPath(parent: self, _id: _id)
    }
    /*
    Returns call recording metadata by ID.
    */
    open func get(callback: @escaping (_ t: GetCallRecordingResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetCallRecordingResponse?, error) in
            callback(t, error)
        }
    }
}
