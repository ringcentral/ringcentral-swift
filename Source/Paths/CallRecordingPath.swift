import Foundation
import ObjectMapper
import Alamofire
open class CallRecordingPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "call-recording"
        }
    }
    open func `extensions`() -> ExtensionsPath {
        return ExtensionsPath(parent: self)
    }
    open func `bulkAssign`() -> BulkAssignPath {
        return BulkAssignPath(parent: self)
    }
    open func `customGreetings`(_ _id: String? = nil) -> CustomGreetingsPath {
        return CustomGreetingsPath(parent: self, _id: _id)
    }
    /*
    Returns call recording settings.
    */
    open func get(callback: @escaping (_ t: CallRecordingSettingsResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: CallRecordingSettingsResource?, error) in
            callback(t, error)
        }
    }
    /*
    Updates current call recording settings
    */
    open func put(callback: @escaping (_ t: CallRecordingSettingsResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: CallRecordingSettingsResource?, error) in
            callback(t, error)
        }
    }
    /*
    Updates current call recording settings
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: CallRecordingSettingsResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: CallRecordingSettingsResource?, error) in
            callback(t, error)
        }
    }
    /*
    Updates current call recording settings
    */
    open func put(parameters: CallRecordingSettingsResource, callback: @escaping (_ t: CallRecordingSettingsResource?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
