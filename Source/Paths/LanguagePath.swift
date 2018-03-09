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
    <p style='font-style:italic;'>Since 1.0.14 (Release 6.6)</p><p>Returns the information about supported languages.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(callback: @escaping (_ t: LanguageList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: LanguageList?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.14 (Release 6.6)</p><p>Returns language by its respective ID.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: LanguageInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: LanguageInfo?, error) in
            callback(t, error)
        }
    }
}
