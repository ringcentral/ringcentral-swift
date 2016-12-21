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
    // Get Call Recording Metadata
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetResponse: Mappable {
        // Internal identifier of the call recording
        open var `id`: String?
        // Link to the call recording binary content
        open var `contentUri`: String?
        // Call recording file format. Supported format is audio/x-wav
        open var `contentType`: String?
        // Recorded call duration
        open var `duration`: Int?
        public init() {
        }
        convenience public init(id: String? = nil, contentUri: String? = nil, contentType: String? = nil, duration: Int? = nil) {
            self.init()
            self.id = `id`
            self.contentUri = `contentUri`
            self.contentType = `contentType`
            self.duration = `duration`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `id` <- (map["id"], StringTransform())
            `contentUri` <- map["contentUri"]
            `contentType` <- map["contentType"]
            `duration` <- map["duration"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
}
