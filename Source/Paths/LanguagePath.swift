import Foundation
import ObjectMapper
import Alamofire
open class LanguagePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "language"
        }
    }
    /*
    Returns the information about supported languages.
    */
    open func list(callback: @escaping (_ t: LanguageList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: LanguageList?, error) in
            callback(t, error)
        }
    }
    /*
    Returns language by ID.
    */
    open func get(callback: @escaping (_ t: LanguageInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: LanguageInfo?, error) in
            callback(t, error)
        }
    }
}
