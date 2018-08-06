import Foundation
import ObjectMapper
import Alamofire
open class IvrPromptsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "ivr-prompts"
        }
    }
    open func `content`(_ _id: String? = nil) -> ContentPath {
        return ContentPath(parent: self, _id: _id)
    }
    /*
    Creates an IVR prompt.
    */
    open func post(callback: @escaping (_ t: PromptInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: PromptInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Returns a list of IVR prompts.
    */
    open func list(callback: @escaping (_ t: IVRPrompts?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: IVRPrompts?, error) in
            callback(t, error)
        }
    }
    /*
    Returns an IVR prompt by ID.
    */
    open func get(callback: @escaping (_ t: PromptInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PromptInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Deletes an IVR prompt by ID.
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
