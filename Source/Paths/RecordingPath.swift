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
    <p style='font-style:italic;'>Since 1.0.18 (Release 6.5)</p><p>Returns call recording metadata.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadCallRecording</td><td>Downloading call recording content</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func get(callback: @escaping (_ t: GetCallRecordingResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetCallRecordingResponse?, error) in
            callback(t, error)
        }
    }
}
