import Foundation
import ObjectMapper
import Alamofire
open class ReportingPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "reporting"
        }
    }
    open func `settings`() -> SettingsPath {
        return SettingsPath(parent: self)
    }
}
