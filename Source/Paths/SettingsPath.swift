import Foundation
import ObjectMapper
import Alamofire
open class SettingsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "settings"
        }
    }
}
